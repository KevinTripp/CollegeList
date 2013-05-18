class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.integer :tuition
      t.date :due_date
      t.integer :student_rank
      t.integer :student_progress
      t.boolean :accepted
      t.boolean :complete
      t.integer :user_id
      t.string :address1
      t.string :address2
      t.integer :zip
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
