namespace :msg do
  
  desc 'created reduced subfolder'
  task :folders => :environment do
    Dir.glob("#{Rails.root}/public/menu/**/*") do |f|
      if File.file? f 
         if File.extname(f) == "png"
           reduced = File.dirname(f) + "/reduced"
           system("mkdir -p #{reduced}") unless File.directory?(reduced)
           high = File.dirname(f) + "/high"
           system("mkdir -p #{high}") unless File.directory?(high)
         end
      end
    end
  end
  
  desc 'reduce png images in menu subfolder'
  task :reduce_image => [:environment, :folders] do
    Picture.all.each do |picture|
      sh "/Applications/reduce_image.app/Contents/MacOS/reduce_image #{picture.full_path}"    
    end
  end
  
  desc 'swap high with reduced'
  task :swap_image => :environment do
    Picture.all.each do |picture|
      picture_path = picture.full_path
      picture_folder = File.dirname(picture_path)
      high_folder = picture_folder + "/high"
      sh "mv #{picture_path} #{high_folder}/"
      reduced_folder = picture_folder + "/reduced"
      reduced_image = reduced_folder + "/#{File.basename(picture_path)}"
      sh "mv #{reduced_image} #{picture_folder}/"
    end
    
  end
end