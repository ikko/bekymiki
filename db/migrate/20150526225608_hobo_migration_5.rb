class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :projects, :url, :string
  end

  def self.down
    remove_column :projects, :url
  end
end
