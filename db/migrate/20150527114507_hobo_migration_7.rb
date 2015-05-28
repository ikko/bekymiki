class HoboMigration7 < ActiveRecord::Migration
  def self.up
    rename_column :projects, :description, :description_en
    add_column :projects, :description_hu, :text
    remove_column :projects, :state
    remove_column :projects, :key_timestamp

    remove_index :projects, :name => :index_projects_on_state rescue ActiveRecord::StatementInvalid
  end

  def self.down
    rename_column :projects, :description_en, :description
    remove_column :projects, :description_hu
    add_column :projects, :state, :string, default: "normal"
    add_column :projects, :key_timestamp, :datetime

    add_index :projects, [:state]
  end
end
