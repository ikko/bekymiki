class Education < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    organization :string
    title_hu     :string
    title_en     :string
    from         :integer
    to           :integer
    timestamps
  end
  attr_accessible :organization, :title_hu, :title_en, :from, :to

  def title
    self.send "title_#{I18n.locale}"
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
