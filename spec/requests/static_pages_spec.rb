require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Nimes" }
  subject {page}

  describe "Home page" do
  before { visit root_path }
  it { should have_content('Home Page') }
  it { should have_title ("#{base_title}") }
  it { should_not have_title ('Nimes | Home') }
  end

  describe "Help page" do
  before { visit help_path }
  it { should have_content('Help') }
  it { should have_title ("#{base_title} | Help") }
  end

  describe "About page" do
  before { visit about_path }
  it { should have_content('About Us') }
  it { should have_title ("#{base_title} | About") }
  end

  describe "Contact page" do
  before { visit contact_path }
  it { should have_content('Contact Us') }
  it { should have_title ("#{base_title} | Contact") }
  end

end