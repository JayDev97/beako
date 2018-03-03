class BudgetItemsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_budget_item, only: [:show, :edit, :update, :destroy]
  
  # GET /budget_items
  # GET /budget_items.json
  def index
    
   # @budget_items = BudgetItem.all
    
  
   @budget_items = budget.budget_items.where("budget_item.id = ?", 1)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @budget_items }
    end
    
    @budget_income = budget.budget_items.where("budget_items.account.accountype =?", 'Income')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @budget_income }
    end
    
  end
  
  # GET /budget_items/1
  # GET /budget_items/1.json
  def show
   
  end

  # GET /budget_items/new
  def new
    @budget_item = BudgetItem.new
    @parm_id = params[:budid]
    
  
  end

  # GET /budget_items/1/edit
  def edit
    
      @parm_id = @budget_item.budget_id
      
  end

  # POST /budget_items
  # POST /budget_items.json
  def create
    
    @budget_item = BudgetItem.new(budget_item_params)
    
    respond_to do |format|
      if @budget_item.save
       format.html { redirect_to budget_url(@budget_item.budget_id) }
       format.json { render :show, status: :created, location: @budget_item }
      else
        format.html { render :new }
        format.json { render json: @budget_item.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /budget_items/1
  # PATCH/PUT /budget_items/1.json
  def update
    respond_to do |format|
      if @budget_item.update(budget_item_params)
        format.html {redirect_to budget_url(@budget_item.budget_id), notice: 'Budget Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_item }
      else
        format.html { render :edit }
        format.json { render json: @budget_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_items/1
  # DELETE /budget_items/1.json
  def destroy
    @budget_item.destroy
    respond_to do |format|
     format.html { redirect_to budget_url(@budget_item.budget_id) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_item
      @budget_item = BudgetItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_item_params
      params.require(:budget_item).permit(:item, :quantity, :unit_id, :price, :total, :budget_id, :account_id)
    end
end
