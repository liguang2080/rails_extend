module RailsExtend
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      require File.expand_path(File.dirname(__FILE__) + '/action_controller/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_record/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_support/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_model/all')
    end
  end
end