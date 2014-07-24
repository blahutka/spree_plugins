FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_plugins/factories'

  factory :plugin, class: Spree::Plugin do
    name 'A100'
    css 'test-class'
    code '<div>HI</div>'
    state 'ACTIVE'
    type 'plugin'
  end
end
