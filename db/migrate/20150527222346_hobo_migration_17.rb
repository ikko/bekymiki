class HoboMigration17 < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.string   :organization
      t.string   :title
      t.integer  :from
      t.integer  :to
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :educations
  end
end
