class CreateQueueGroups < ActiveRecord::Migration
  def change
    create_table :queue_groups do |t|
      t.string :name, null: false
      t.string :description
      t.references :service_line, index: true
      t.boolean :archived, null: false, default: false
      t.string :queue_group_id

      t.timestamps
    end
  end
end
