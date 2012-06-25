module RailsExtend
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      
      # ActionController
      require File.dirname(__FILE__) + '/action_controller/ajax_redirect_helper'
      ActionController::Base.send(:include, AjaxRedirectHelper)
      ActionController::Base.send(:helper_method, :ar_error_show)
      
      # ActiveRecord
      require File.dirname(__FILE__) + '/active_record/base'
      require File.dirname(__FILE__) + '/active_record/errors'
      
      # ActiveSupport
      Dir.glob(File.expand_path(File.dirname(__FILE__) + '/active_support/*.rb')) do |file|
        require File.expand_path(File.dirname(__FILE__) + '/active_support/') + "/" + File.basename(file, ".rb")
      end
    end
  end
end
