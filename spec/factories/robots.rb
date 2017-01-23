FactoryGirl.define do
  factory :robot do
    name "Robocop"
    robot_type "Fighting"
    armor "Gold Plated"
    jetpack false
    owner
  end
end
