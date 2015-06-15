class Place < ActiveRecord::Base
  has_many :menus
  
  def place_path
    "menu/#{name}"
  end
end
