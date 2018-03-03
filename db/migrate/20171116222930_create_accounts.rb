class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :code
      t.string :name
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
