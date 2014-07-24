require 'spec_helper'

describe Spree::Plugin do
  describe "validations" do
    before(:each) { @plugin = create(:plugin) }

    it "fails validation with no code" do
      @plugin.update_attribute(:code, '')
      @plugin.should_not be_valid
    end

    it "fails validation with no state" do
      @plugin.update_attribute(:state, '')
      @plugin.should_not be_valid
    end

    it "fails validation with no type" do
      @plugin.update_attribute(:type, '')
      @plugin.should_not be_valid
    end

    it "fails validation with no name" do
      @plugin.update_attribute(:name, '')
      @plugin.should_not be_valid
    end
  end
end

