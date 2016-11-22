require 'rails_helper'

RSpec.describe Tuition, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :month }
    it "is not valid with a value of month lower than 1" do
      expect(Tuition.new(month: 0)).to_not be_valid
    end
    it "is not valid with a value of month higher than 12" do
      expect(Tuition.new(month: 13)).to_not be_valid
    end
    it "is valid with a value of month in 1..12" do
      expect(Tuition.new(month: 1)).to be_valid
      expect(Tuition.new(month: 12)).to be_valid
    end
  end

  describe 'database columns' do
    it { should have_db_column :month }
  end

  describe 'associations' do
    it { is_expected.to have_many :students }
    it { is_expected.to have_many :payments }
  end
end
