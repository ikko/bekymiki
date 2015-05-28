class HoboMigration8 < ActiveRecord::Migration
  def self.up
    create_table :project_skills do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :skill_id
    end
    add_index :project_skills, [:project_id]
    add_index :project_skills, [:skill_id]

    create_table :job_tools do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :job_id
      t.integer  :tool_id
    end
    add_index :job_tools, [:job_id]
    add_index :job_tools, [:tool_id]

    create_table :job_skills do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :job_id
      t.integer  :skill_id
    end
    add_index :job_skills, [:job_id]
    add_index :job_skills, [:skill_id]

    add_column :skills, :description, :string

    add_column :jobs, :company, :string
    add_column :jobs, :position, :string
    add_column :jobs, :date_from, :date
    add_column :jobs, :date_to, :date
    add_column :jobs, :description, :text
  end

  def self.down
    remove_column :skills, :description

    remove_column :jobs, :company
    remove_column :jobs, :position
    remove_column :jobs, :date_from
    remove_column :jobs, :date_to
    remove_column :jobs, :description

    drop_table :project_skills
    drop_table :job_tools
    drop_table :job_skills
  end
end
