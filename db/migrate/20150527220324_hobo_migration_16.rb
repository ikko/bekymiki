class HoboMigration16 < ActiveRecord::Migration
  def self.up
    add_column :languages, :uni, :string
  end

  def self.down
    remove_column :languages, :uni
  end
end
