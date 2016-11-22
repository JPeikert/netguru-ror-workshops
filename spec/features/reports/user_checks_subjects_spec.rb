require 'spec_helper'

feature 'User checks subjects reports' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1998-07-10' }
  let!(:subject_item) { create :subject_item, title: 'Math' }
  let!(:participant) { create :participation, student: student, subject_item: subject_item }
  let!(:subject_item_note) { create :subject_item_note, subject_item: subject_item, student: student }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_subjects_path
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Subjects'
    end
    
    within('.subjects') do
      expect(page).to have_content 'Math'
      expect(page).to have_content 'Jan Nowak'
      expect(page).to have_content '1998-07_10'
      expect(page).to have_content '1.00'
    end
  end

end
