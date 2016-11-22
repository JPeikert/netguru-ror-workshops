require 'rails_helper'

RSpec.describe ReportsController do
  let(:user) { create :user }

  before { sign_in user }

  describe 'GET #subjects' do
    subject { get :subjects }

    it_behaves_like 'template rendering action', :subjects
  end

  describe 'GET #tuitions' do
    subject { get :tuitions }

    it_behaves_like 'template rendering action', :tuitions
  end
end
