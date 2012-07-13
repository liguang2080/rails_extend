# -*- encoding : utf-8 -*-
module Weibo
  class Railtie < ::Rails::Railtie
    initializer "扩充rails" do
      require File.expand_path(File.dirname(__FILE__) + '/action_controller/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_record/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_support/all')
      require File.expand_path(File.dirname(__FILE__) + '/active_model/all')
    end
  end
end
