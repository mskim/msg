

Dir.glob("#{Rails.root}/public/menu/**/*") do |f|
  if File.file? f
    next if f =~/reduced/
    next if f =~/high/
    
    picture = File.basename(f)
    path_array = f.split("/")
    menu = path_array[-2]
    place = path_array[-3]
    puts "picture:#{picture}"
    puts "menu:#{menu}"
    puts "place:#{place}"
    p = Place.where(name: place).first_or_create
    m = Menu.where(place_id: p.id, name: menu).first_or_create
    Picture.where(menu_id: m.id, filename: picture).first_or_create
  end
end
