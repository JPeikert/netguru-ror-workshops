require 'spec_helper'

feature 'User checks student details' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak' }
  let!(:student_birthdate) { create :student, first_name: 'Adam', last_name: 'Smith', birthdate: '1998-07-10' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit students_path
  end

  scenario do
    find(:xpath, "(//a[@title='show'])[1]").click
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Students » Jan Nowak'
    end
  end

  scenario "without birthdate" do
    find(:xpath, "(//a[@title='show'])[1]").click
    within('.table') do
      expect(page).to have_no_content 'birthdate'
    end
  end

  scenario "with birthdate" do
    find(:xpath, "(//a[@title='show'])[2]").click
    within('.table') do
      expect(page).to have_content '1998-07-10'
    end
  end
end
