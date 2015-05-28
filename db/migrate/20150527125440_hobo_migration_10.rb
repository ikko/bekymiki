class HoboMigration10 < ActiveRecord::Migration
  def self.up
    remove_column :jobs, :name
  end

  def self.down
    add_column :jobs, :name, :string
  end
end
