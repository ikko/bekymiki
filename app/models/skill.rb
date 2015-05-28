class Skill < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name_hu :string
    name_en :string
    description_hu :html
    description_en :html
    timestamps
    position :integer
  end
  attr_accessible :name_hu, :description_hu, :name_en, :description_en, :jobs, :projects
  
  has_many :project_skills
  has_many :projects, through: :project_skills, accessible: true

  has_many :job_skills
  has_many :jobs, through: :job_skills, accessible: true
  
  acts_as_list
  
  def description
    self.send "description_#{I18n.locale}"
  end
  
  def name
    self.send "name_#{I18n.locale}"
  end

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
