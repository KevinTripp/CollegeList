class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.date :duedate
      t.boolean :complete
      t.integer :college_id

      t.timestamps
    end
  end
end
