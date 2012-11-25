require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Human Perf" }

  subject { page }

  describe "Home pages" do
    before { visit root_path }

    it { should have_selector('h1',        text: 'Human Perf') }
    it { should have_selector('title',     text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
  	before { visit about_path }

    it { should have_selector('h1',    text: 'About us') }
    it { should have_selector('title', text: full_title('About us')) }
  end

  describe "Contact page" do
  	before { visit contact_path }

    it { should have_selector('h1',     text: 'Contact') }
    it { should have_selector('title',  text: full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About us')
    click_link "Help"
    page.should # fill in
    click_link "Contact"
    page.should # fill in
    click_link "Home"
    click_link "Sign up now!"
    page.should # fill in
    click_link "human perf"
    page.should # fill in
  end

end
