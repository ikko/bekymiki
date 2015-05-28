class Job < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    company      :string
    company_url  :string
    role_hu      :string    
    role_en      :string    
    date_from    :date
    date_to      :date
    description_hu  :html
    description_en  :html
    timestamps
    position     :integer
  end
  attr_accessible :company, :company_url, :role_hu, :role_en, :date_from, :date_to, :description_en, :description_hu, :tools, :skills

  has_many :job_tools
  has_many :tools, through: :job_tools, accessible: true
  
  has_many :job_skills
  has_many :skills, through: :job_skills, accessible: true
  
  acts_as_list
  
  def self.date_format
    return "%Y. %h" if I18n.locale == :hu
    return "%h %Y"  if I18n.locale == :en
  end
  
  def self.cv
    "BekyMiklos_CV_#{I18n.locale}.pdf"
  end
  
  def description
    self.send "description_#{I18n.locale}"
  end
  
  def role
    self.send "role_#{I18n.locale}"
  end
  
  def name
    "#{role}, #{company}"
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
