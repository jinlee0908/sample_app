require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    before {visit root_path}

    it { should have_content('Sample App') }
    it { should have_title('Ruby on Rails Tutorial Sample App') }
    it { should_not have_title ('| Home') }
  end
  	
    # it "should have the content 'Sample App'" do
      # visit '/static_pages/home'
      # visit root_path
    #   expect(page).to have_content('Sample App')
    # end

    # it "should have the base title" do
      # visit '/static_pages/home'
      # visit root_path
      # expect(page).to have_title('Ruby on Rails Tutorial Sample App')
      # expect(page).to have_title('Home') alternate match okay
    # end 

    # it "should not have a custom page title" do
      # visit '/static_pages/home'
      # visit root_path
    #   expect(page).not_to have_title('| Home')
    # end
  # end

  describe "Help page" do
    before {visit help_path}

    it { should have_content ('Help') }
    it { should have_title ('Ruby on Rails Tutorial Sample App | Help') }
  end

  #   it "should have the content 'Help' " do 
  #     # visit '/static_pages/help'
  #     # visit help_path
  #     expect(page).to have_content('Help')
  #   end

  #   it "should have the Help title" do
  #     # visit '/static_pages/help'
  #     # visit help_path
  #     expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
  #     # expect(page).to have_title('Help') alternate match okay
  #   end
  # end

  describe "About page" do
    before {visit about_path}

    it { should have_content('About Us') }
    it { should have_title('About Us') }
  end

  #   it "should have the content 'About Us'" do
  #     # visit '/static_pages/about'
  #     # visit about_path
  #     expect(page).to have_content('About Us')
  #   end

  #   it "should have the About Us title" do
  #    # visit '/static_pages/about'
  #    # visit about_path
  #    # expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
  #    expect(page).to have_title('About Us')
  #   end
  # end

  describe "Contact page"do
    before {visit contact_path}

    it { should have_content('Contact') }
    it { should have_title('Ruby on Rails Tutorial Sample App | Contact') }
  end

  #   it "should have the content 'Contact'" do
  #     # visit '/static_pages/contact'
  #     # visit contact_path
  #     expect(page).to have_content('Contact')
  #   end

  #   it "should have the Contact title" do 
  #     # visit '/static_pages/contact'
  #     # visit contact_path
  #     expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
  #   end
  # end
end
