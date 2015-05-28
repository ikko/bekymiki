class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :project_tools do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :tool_id
    end
    add_index :project_tools, [:project_id]
    add_index :project_tools, [:tool_id]
  end

  def self.down
    drop_table :project_tools
  end
end
