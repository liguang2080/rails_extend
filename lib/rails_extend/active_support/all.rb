Dir.glob(File.expand_path(File.dirname(__FILE__) + '/*.rb')) do |file|
  require File.expand_path(File.dirname(__FILE__)) + "/" + File.basename(file, ".rb")
end