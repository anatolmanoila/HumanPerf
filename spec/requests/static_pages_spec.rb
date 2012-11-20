require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Human Perf" }

  describe "Home pages" do
    it "should have the h1 'Human Perf'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Human Perf')
    end
    it "should have the title Home" do
    	visit '/static_pages/home'
  		page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
  		page.should have_selector('title',
                    :text => "#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the h1 'About us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About us')
    end 
    it "should have the title 'About us'" do
    	visit '/static_pages/about'
  		page.should have_selector('title',
                    :text => "#{base_title} | About us")
    end
  end

  describe "Contact page" do 
  	it "should have the h1 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', :text => 'Contact')
  	end
  	it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',
  									:text => "#{base_title} | Contact")
  	end
  end
end
