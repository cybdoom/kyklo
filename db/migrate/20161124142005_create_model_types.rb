class CreateModelTypes < ActiveRecord::Migration
  def change
    create_table :model_types do |t|
      t.integer :model_id
      t.string :name
      t.string :model_type_slug, null: false
      t.string :model_type_code
      t.integer :base_price

      t.timestamps null: false
    end

    add_index :model_types, :model_id
    add_index :model_types, :model_type_slug, unique: true
  end
end
