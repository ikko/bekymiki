class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :projects, :screenshot, :string
    add_column :projects, :state, :string, :default => "normal"
    add_column :projects, :key_timestamp, :datetime

    add_index :projects, [:state]
  end

  def self.down
    remove_column :projects, :screenshot
    remove_column :projects, :state
    remove_column :projects, :key_timestamp

    remove_index :projects, :name => :index_projects_on_state rescue ActiveRecord::StatementInvalid
  end
end
