class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :tools, :url, :string
  end

  def self.down
    remove_column :tools, :url
  end
end
