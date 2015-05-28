class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name           :string
    description_hu :html
    description_en :html
    url            :string
    screenshot     :string
    timestamps
    position       :integer
  end
  attr_accessible :name, :description_hu, :description_en, :tools, :skills, :url, :screenshot
  
  has_many :project_tools
  has_many :tools, through: :project_tools, accessible: true
  
  has_many :project_skills
  has_many :skills, through: :project_skills, accessible: true
  
  acts_as_list
  
  def description
    self.send "description_#{I18n.locale}"
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
