class HoboMigration15 < ActiveRecord::Migration
  def self.up
    rename_column :languages, :name, :name_en
    add_column :languages, :name_hu, :string
  end

  def self.down
    rename_column :languages, :name_en, :name
    remove_column :languages, :name_hu
  end
end
