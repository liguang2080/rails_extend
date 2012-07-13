require File.expand_path(File.dirname(__FILE__) + '/rails_extend/version')

if defined?(Rails)
  require File.expand_path(File.dirname(__FILE__) + '/rails_extend/railtie')
end