class CreatePersonTable < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :house_id

      t.timestamps
    end

    create_table :houses do |t|
      t.string :address, null: false

      t.timestamps
    end
  end
end
