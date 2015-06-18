class Picture < ActiveRecord::Base
  belongs_to :menu
  def picture_path
    "#{menu.menu_path}/#{filename}" 
  end
  
  def full_path
    "#{Rails.root}/public/#{picture_path}"
  end
end
