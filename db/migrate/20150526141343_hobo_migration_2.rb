class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :personals do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :skills do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :jobs do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :tools do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :languages do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :personals
    drop_table :skills
    drop_table :jobs
    drop_table :tools
    drop_table :languages
  end
end
