namespace :msg do
  
  desc 'created reduced subfolder'
  task :reduced_folder => :environment do
    Dir.glob("#{Rails.root}/public/menu/**/*") do |f|
      if File.file? f 
         if File.extname(f) == "png"
           reduced = File.dirname(f) + "/reduced"
           system("mkdir -p #{reduced}") unless File.directory?(reduced)
         end
      end
    end
  end
  
  desc 'reduce png images in menu subfolder'
  task :reduce_image => :environment do
    Picture.all.each do |picture|
      sh "/Applications/reduce_image.app/Contents/MacOS/reduce_image #{picture.full_path}"    
    end
  end
  
end