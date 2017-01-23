require 'rails_helper'

RSpec.describe Owner, type: :model do

  describe 'Database table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :reset_password_token }
    it { is_expected.to have_db_column :reset_password_sent_at }
    it { is_expected.to have_db_column :remember_created_at }
    it { is_expected.to have_db_column :sign_in_count }
    it { is_expected.to have_db_column :current_sign_in_at }
    it { is_expected.to have_db_column :last_sign_in_at }
    it { is_expected.to have_db_column :current_sign_in_ip }
    it { is_expected.to have_db_column :last_sign_in_ip }
    it { is_expected.to have_db_column :created_at }
    it { is_expected.to have_db_column :updated_at }
  end

  describe "Actions" do
    it { is_expected.to respond_to :robots }
    it { is_expected.to respond_to :id }
    it { is_expected.to respond_to :email }
    it { is_expected.to respond_to :encrypted_password }
    it { is_expected.to respond_to :reset_password_token }
    it { is_expected.to respond_to :reset_password_sent_at }
    it { is_expected.to respond_to :remember_created_at }
    it { is_expected.to respond_to :sign_in_count }
    it { is_expected.to respond_to :current_sign_in_at }
    it { is_expected.to respond_to :last_sign_in_at }
    it { is_expected.to respond_to :current_sign_in_ip }
    it { is_expected.to respond_to :last_sign_in_ip }
    it { is_expected.to respond_to :created_at }
    it { is_expected.to respond_to :updated_at }
  end


  describe "Associations" do
    it { is_expected.to have_many :robots }
  end

  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:owner)).to be_valid
    end
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }

    context 'should not have an invalid email address' do
      emails = [
          'asdf@ ds.com',
          '@example.com',
          'test me @yahoo.com'
      ]

      emails.each do |email|
        it { is_expected.not_to allow_value(email).for(:email) }
      end
    end
  end

end
