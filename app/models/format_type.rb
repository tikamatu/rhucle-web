class FormatType < ActiveYaml::Base
  include ActiveHash::Enum

  set_root_path 'config/master'
  set_filename self.name.underscore

  enum_accessor :type
end
