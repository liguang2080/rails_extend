# -*- encoding : utf-8 -*-
module ActiveRecord
  class Base
    class << self
      alias_method :[], :find
      
      # 加载模型同目录下的文件  目前只支持一级
      def load_part(part_name)
        require Rails.root + "app/models/#{self.name.underscore}/#{part_name}"
        include "#{self.name}#{part_name.classify}".constantize
      end
    end

    def dom_id(prefix='')
      display_id = new_record? ? "new" : id.to_s
      prefix.to_s << ('_') unless prefix.blank?
      prefix.to_s << "#{self.class.name.underscore.gsub('/', '_')}"
      prefix != :bare ? "#{prefix.to_s.underscore}_#{display_id}" : display_id
    end
  end
end
