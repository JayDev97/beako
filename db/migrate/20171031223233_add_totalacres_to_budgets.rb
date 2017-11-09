class AddTotalacresToBudgets < ActiveRecord::Migration[5.0]
  def change
    add_column :budgets, :totalacres, :decimal
  end
end
