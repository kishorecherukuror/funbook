class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :fname
      t.string :lname
      t.string :uname
      t.integer :age

      t.timestamps null: false
    end
  end
end
