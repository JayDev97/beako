class CreateBudgetCostItems < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_cost_items do |t|
      t.string :item
      t.decimal :quantity
      t.integer :unit_id
      t.decimal :price
      t.decimal :total
      t.integer :budget_id
      t.integer :account_id

      t.timestamps
    end
  end
end
