class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :jobs, :role, :string
    change_column :jobs, :position, :integer, :limit => nil

    add_column :tools, :position, :integer
  end

  def self.down
    remove_column :jobs, :role
    change_column :jobs, :position, :string

    remove_column :tools, :position
  end
end
