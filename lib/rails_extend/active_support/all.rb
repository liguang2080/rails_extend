Dir.glob(File.expand_path(File.dirname(__FILE__) + '/*.rb')) do |file|
  next if file.ends_withs?("all.rb")
  require File.expand_path(File.dirname(__FILE__)) + "/" + File.basename(file, ".rb")
end