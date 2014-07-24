module Spree
  class Plugin < ActiveRecord::Base
    validates_presence_of :name, :code, :type, :state
    self.inheritance_column = :_type_disabled
  end
end
