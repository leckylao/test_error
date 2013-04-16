class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description
      t.references :assignee, polymorphic: true, index: true
      t.references :activity, index: true
      t.references :event_class, index: true
      t.references :system, index: true
      t.integer :updated_by_id, index: true
      t.integer :created_by_id, index: true
      t.string :status, null: false, default: "NEW"
      t.integer :priority, null:false, default: 3
      t.datetime :target_datetime
      t.integer :effort, default: 0
      t.string :event_id
      t.integer :queue_group_id
      t.string :url

      t.timestamps
    end
  end
end
