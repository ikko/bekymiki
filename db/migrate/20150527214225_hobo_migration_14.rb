class HoboMigration14 < ActiveRecord::Migration
  def self.up
    rename_column :skills, :name, :name_en
    rename_column :skills, :description, :description_en
    add_column :skills, :name_hu, :string
    add_column :skills, :description_hu, :string
    add_column :skills, :position, :integer
  end

  def self.down
    rename_column :skills, :name_en, :name
    rename_column :skills, :description_en, :description
    remove_column :skills, :name_hu
    remove_column :skills, :description_hu
    remove_column :skills, :position
  end
end
