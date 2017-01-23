class AddOwnerToRobots < ActiveRecord::Migration[5.0]
  def change
    add_reference :robots, :owner, foreign_key: true
  end
end
