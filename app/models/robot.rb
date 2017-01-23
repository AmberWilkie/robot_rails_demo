class Robot < ApplicationRecord
  validates_presence_of :name, :type, :armor, presence: true
  belongs_to :owner
end
