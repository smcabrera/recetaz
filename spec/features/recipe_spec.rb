require 'spec_helper'
require 'rails_helper'

describe "User" do

  include Warden::Test::Helpers
  Warden.test_mode!

  context "when not logged in" do
    it 'sees the landing page when not logged in' do
      visit root_path
      expect(page).to have_content("Sign in or Sign up")
    end
  end

  context 'when logged in' do
    before do
      user = create(:user)
      login_as(@user, :scope => :user)
    end

    xit "can create a new recipe" do

    end

    xit 'can edit an existing recipe' do

    end

    xit 'can delete an existing recipe' do

    end

    xit 'can add ingredients to an existing recipe' do

    end
  end
end
