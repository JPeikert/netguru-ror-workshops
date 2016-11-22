require 'rails_helper'

RSpec.describe Tuition, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :month }
  end

  describe 'database columns' do
    it { should have_db_column :month }
  end

  describe 'associations' do
    it { is_expected.to have_many :students }
    it { is_expected.to have_many :payments }
  end
end
