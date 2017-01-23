class CreateRobots < ActiveRecord::Migration[5.0]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :type
      t.string :armor
      t.boolean :jetpack

      t.timestamps
    end
  end
end
