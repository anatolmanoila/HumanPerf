require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do
    it "should have the content 'Human Perf'" do
      visit '/static_pages/home'
      page.should have_content('Human Perf')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
  		page.should have_selector('title',
                    :text => "Human Perf | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
    	visit '/static_pages/help'
  		page.should have_selector('title',
                    :text => "Human Perf | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		page.should have_content('About us')
    end 
    it "should have the right title" do
    	visit '/static_pages/about'
  		page.should have_selector('title',
                    :text => "Human Perf | About us")
    end
  end
end
