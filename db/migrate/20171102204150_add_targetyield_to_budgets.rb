class AddTargetyieldToBudgets < ActiveRecord::Migration[5.0]
  def change
    add_column :budgets, :targetyield, :decimal
  end
end
