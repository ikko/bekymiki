class Tool < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    url  :string
    position :integer
    timestamps
  end
  attr_accessible :name, :url, :projects, :jobs, :projects
  
  has_many :project_tools
  has_many :projects, through: :project_tools, accessible: true

  has_many :job_tools
  has_many :jobs, through: :job_tools, accessible: true

  acts_as_list
 
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
