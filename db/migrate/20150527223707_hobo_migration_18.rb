class HoboMigration18 < ActiveRecord::Migration
  def self.up
    add_column :educations, :title_hu, :string
    add_column :educations, :title_en, :string
    remove_column :educations, :title
  end

  def self.down
    remove_column :educations, :title_hu
    remove_column :educations, :title_en
    add_column :educations, :title, :string
  end
end
