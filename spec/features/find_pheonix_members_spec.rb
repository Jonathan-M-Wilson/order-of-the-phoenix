require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'While on the welcome index page' do
    before :each do
      visit root_path
    end

    it "When I select \"Gryffindor\" and click \"Search For Members\" I should be redirected to the /search page" do
      select 'Gryffindor', from: :house
      click_on "Search For Members"

      expect(current_path).to eq("/search")
    end

    describe 'While on the search page' do
      before :each do
        visit root_path
        select 'Gryffindor', from: :house
        click_on "Search For Members"
      end

      xit "I should see the total number of the order of the phoenix members that belong to Gryffindor." do
        expect(page).to have_content("Total Members Found: #{members.count}")
      end

      xit "I also see a list of information for each member, including their name, role, house, and patronus" do
        member = SearchResults.new.find_member('Harry Potter').first
        within('.members') do
          save_and_open_page
          expect(page).to have_content("Member Name: #{member.name}")
          expect(page).to have_content("Role: #{member.role}")
          expect(page).to have_content("House: #{member.house}")
          expect(page).to have_content("Patronus: #{member.patronus}")
        end
      end
    end
  end
end
