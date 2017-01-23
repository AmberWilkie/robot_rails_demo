class RenameTypeToRobotTypeInRobots < ActiveRecord::Migration[5.0]
  def change
    rename_column :robots, :type, :robot_type
  end
end
