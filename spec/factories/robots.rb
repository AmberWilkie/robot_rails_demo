FactoryGirl.define do
  factory :robot do
    name "Robocop"
    robot_type "Fighting"
    armor "Gold Plated"
    jetpack false
    owner FactoryGirl.create(:owner)
  end
end
