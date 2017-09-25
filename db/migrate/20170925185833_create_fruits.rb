class CreateFruits < ActiveRecord::Migration[5.1]
  def change
    create_table :fruitstwo do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
