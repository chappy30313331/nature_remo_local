class CreateAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :appliances do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :appliances, %i[name], unique: true
  end
end
