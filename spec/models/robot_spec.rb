require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe "DB tables" do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :type }
    it { is_expected.to have_db_column :armor }
    it { is_expected.to have_db_column :jetpack }
  end

end
