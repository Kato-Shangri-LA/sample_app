=begin
require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end

require 'spec_helper'

describe "static pages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
			#expect(page).to have_title("Home")でもよい。
			
		end

	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content("Help")
		end

		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
			#expect(page).to have_title("Help")でもよい。
			
		end

	end

	describe "About page" do
		it "should have the content 'About us'" do
			visit '/static_pages/about'
			expect(page).to have_content("About us")
		end

		it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About us")
			#expect(page).to have_title("About us")でもよい。
			
		end

	end


end

