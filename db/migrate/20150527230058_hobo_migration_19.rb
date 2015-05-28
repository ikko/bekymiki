class HoboMigration19 < ActiveRecord::Migration
  def self.up
    add_column :personals, :url, :string
    add_column :personals, :favicon, :string
    add_column :personals, :position, :integer
  end

  def self.down
    remove_column :personals, :url
    remove_column :personals, :favicon
    remove_column :personals, :position
  end
end
