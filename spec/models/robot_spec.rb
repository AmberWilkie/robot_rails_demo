require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe "DB tables" do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :type }
    it { is_expected.to have_db_column :armor }
    it { is_expected.to have_db_column :jetpack }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :type }
    it { is_expected.to validate_presence_of :armor }
  end

  describe "Factory" do
    it 'should have a valid factory' do
      expect(FactoryGirl.create(:robot)).to be_valid
    end
  end

  describe "Actions" do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :type }
    it { is_expected.to respond_to :armor }
    it { is_expected.to respond_to :jetpack }
  end
end
