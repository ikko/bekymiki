class HoboMigration13 < ActiveRecord::Migration
  def self.up
    rename_column :jobs, :description, :description_hu
    rename_column :jobs, :role, :role_hu
    add_column :jobs, :role_en, :string
    add_column :jobs, :description_en, :text
  end

  def self.down
    rename_column :jobs, :description_hu, :description
    rename_column :jobs, :role_hu, :role
    remove_column :jobs, :role_en
    remove_column :jobs, :description_en
  end
end
