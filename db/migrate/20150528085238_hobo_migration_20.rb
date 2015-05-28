class HoboMigration20 < ActiveRecord::Migration
  def self.up
    remove_column :personals, :name

    change_column :skills, :description_en, :text, :limit => nil
    change_column :skills, :description_hu, :text, :limit => nil
  end

  def self.down
    add_column :personals, :name, :string

    change_column :skills, :description_en, :string
    change_column :skills, :description_hu, :string
  end
end
