class Plugin < ActiveRecord::Base
  validates_presence_of :name, :code, :type, :state
end
