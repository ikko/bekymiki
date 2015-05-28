class Personal < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    url  :string, name: true
    favicon :string
    timestamps
  end
  attr_accessible :name, :url, :favicon
  
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
