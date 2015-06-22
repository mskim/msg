namespace :msg do
  
  desc 'reduce png images in menu subfolder'
  task :reduce_image => [:environment, :folders] do
    Picture.all.each do |picture|
      picture_path = picture.full_path
      if File.size(picture_path) > 700000
        puts "reducing..."
        puts "picture_path:#{picture_path}"
        sh "mogrify -resize 50% #{picture_path}"
      end
    end
  end
  
end