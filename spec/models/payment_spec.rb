require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :payment_date }
  end

  describe 'database columns' do
    it { should have_db_column :payment_date }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
    it { is_expected.to belong_to :tuition }
  end
end
