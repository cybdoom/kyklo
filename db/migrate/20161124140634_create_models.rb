class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :organization_id, null: false
      t.string :name
      t.string :model_slug, null: false

      t.timestamps null: false
    end

    add_index :models, :organization_id
    add_index :models, :model_slug, unique: true
  end
end
