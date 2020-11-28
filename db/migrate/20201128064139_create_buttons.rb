class CreateButtons < ActiveRecord::Migration[6.0]
  def change
    create_table :buttons do |t|
      t.references :appliance, null: false, foreign_key: true
      t.string :name, null: false
      t.text :signal, null: false

      t.timestamps
    end

    add_index :buttons, %i[appliance_id name], unique: true
  end
end
