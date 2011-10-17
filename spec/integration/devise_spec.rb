require 'spec_helper'

describe 'Devise' do
  context 'forgot your password' do
    before :each do
      User.create!(:email => 'user@example.com', :password => 'cheese')
    end

    it 'should allow users to reset their password' do
      visit new_user_session_path
      click_link 'Forgot your password?'
      fill_in 'Email', :with =>'user@example.com'
      click_button 'Send me reset password instructions'
    end
  end
end
