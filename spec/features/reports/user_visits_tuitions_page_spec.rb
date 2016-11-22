require 'spec_helper'

feature 'User visits tuitions reports page' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1998-07-10' }
  let!(:tuition) { create :tuition, month: 7}
  let!(:payment) { create :payment, payment_date: '2015-07-10', student: student, tuition: tuition}

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_tuitions_path
  end

  scenario "should see tuitions list" do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Tuitions'
    end
    
    within('.tuitions') do
      expect(page).to have_content 'Jan Nowak'
      expect(page).to have_content 7
    end
  end

  scenario 'only when sign in' do
    logout
    visit report_tuitions_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
