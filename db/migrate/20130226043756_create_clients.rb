class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :description
      t.references :queue_group, index: true
      t.boolean :archived, null: false, default: false
      t.string :client_id

      t.timestamps
    end
  end
end
