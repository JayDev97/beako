class CreateCrops < ActiveRecord::Migration[5.0]
  def change
    create_table :crops do |t|
      t.string :name

      t.timestamps
    end
  end
end
