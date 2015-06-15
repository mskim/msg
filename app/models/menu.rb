class Menu < ActiveRecord::Base
  belongs_to :place
  has_many :pictures
  
  def menu_path
    place.place_path + "/#{name}"
  end
end
