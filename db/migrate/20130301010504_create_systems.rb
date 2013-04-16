class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name, null: false
      t.string :description
      t.references :client, index: true
      t.boolean :archived, null: false, default: false
      t.string :system_id

      t.timestamps
    end
  end
end
