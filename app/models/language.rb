class Language < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name_hu :string
    name_en :string
    uni     :string
    timestamps
  end
  attr_accessible :name_hu, :name_en, :uni
  
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
