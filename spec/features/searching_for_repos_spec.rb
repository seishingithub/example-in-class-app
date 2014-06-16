require 'spec_helper'

feature 'user searching for repos' do
  scenario 'a search that results in a list of repos' do
    VCR.use_cassette "features/user_searching_for_repo" do
      visit '/'
      click_on 'Find Repos'

      fill_in 'Username', with: 'seishingithub'
      click_on 'Search'

      expect(page).to have_content('seishingithub')
      expect(page).to have_content('crm-data-challenge')
      expect(page).to have_content('rails_crud_beverages')
    end
  end
end