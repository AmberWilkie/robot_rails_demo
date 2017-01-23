class Robot < ApplicationRecord
  validates_presence_of :name, :robot_type, :armor, presence: true
  belongs_to :owner
end
