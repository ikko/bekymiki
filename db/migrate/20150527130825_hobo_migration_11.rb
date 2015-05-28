class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :jobs, :company_url, :string
  end

  def self.down
    remove_column :jobs, :company_url
  end
end
