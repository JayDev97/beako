class AddCropRefToBudgets < ActiveRecord::Migration[5.0]
  def change
    add_reference :budgets, :crop, foreign_key: true
  end
end
