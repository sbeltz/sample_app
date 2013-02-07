require 'spec_helper'

describe "Static pages" do
  let(:maintitle) { "Ruby on Rails Tutorial Sample App | " }
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => maintitle + "Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => maintitle + "Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => maintitle + "About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
        visit '/static_pages/contact'
        page.should have_selector('h1', :text => 'Contact Us')
    end
    it "should have the title 'Contact Us'" do
        visit '/static_pages/contact'
        page.should have_selector('title', :text => maintitle + "Contact Us")
    end
  end
end