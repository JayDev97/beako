class BudgetsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_budget, only: [:show, :edit, :update, :destroy]

  # GET /budgets
  # GET /budgets.json
  def index
    @select = Budget.where("budgets.user_id = ?", current_user.id)
    @search = @select.search(params[:q])
    @budgets = @search.result.paginate(:page => params[:page], :per_page => 5)
    if @select.empty?
      @visible = false
    else
      @visible = true
      @search = @select.search(params[:q])
      @budgets = @search.result.paginate(:page => params[:page], :per_page => 5)
    end 
    
  end

  # GET /budgets/1
  # GET /budgets/1.json
  def show
    
    @budget_items = @budget.budget_items.all
    
    @budget_items_income = @budget.budget_items.joins(:account).where('accounts.account_type =?', 'Income' )
    @budget_items_expense = @budget.budget_items.joins(:account).where('accounts.account_type =?', 'Expense' )
   
     
    
    
    
  end

  # GET /budgets/new
  def new
    @budget = Budget.new
  end

  # GET /budgets/1/edit
  def edit
  end

  # POST /budgets
  # POST /budgets.json
  def create
    @budget = Budget.new(budget_params)

    respond_to do |format|
      if @budget.save
        format.html { redirect_to @budget, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
      else
        format.html { render :new }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets/1
  # PATCH/PUT /budgets/1.json
  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.html { redirect_to @budget, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget }
      else
        format.html { render :edit }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_params
      params.require(:budget).permit(:name, :year_id,:totalacres,:targetyield, :crop_id).merge(user_id: current_user.id)
    end
end
