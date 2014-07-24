require 'spec_helper'

describe Spree::Plugin do
  stub_authorization!

  context "index" do
    before(:each) do
      2.times { create(:plugin) }
      visit spree.admin_path
      click_link "Configuration"
      click_link "Add Plugins"
    end

    it "should have the right content" do
      page.should have_content("Plugins")
    end

    it "should have the right tabular values displayed" do
      within_row(1) do
        column_text(1).should == "A100"
        column_text(2).should == 'test-class'
        column_text(3).should == '<div>HI</div>'
        column_text(4).should == "Yes"
      end

      within_row(2) do
        column_text(1).should == "A100"
        column_text(2).should == 'test-class'
        column_text(3).should == '<div>HI</div>'
        column_text(4).should == "Yes"
      end
    end
   end

  context "create" do
    before(:each) do
      visit spree.admin_path
      click_link "Configuration"
      click_link "Add Plugins"
    end

    it "should be able to create a new plugin" do
      click_link "admin_new_plugin_link"
      fill_in "plugin_name", :with => "A100"
      fill_in "plugin_css", :with => "test-class"
      fill_in "plugin_code", :with => "<div>HI</div>"
      choose 'plugin_state_active'
      click_button "Create"

      page.should have_content("successfully created!")
      within_row(1) do
        column_text(1).should == "A100"
        column_text(2).should == 'test-class'
        column_text(3).should == '<div>HI</div>'
        column_text(4).should == "Yes"
      end
    end
  end
end
