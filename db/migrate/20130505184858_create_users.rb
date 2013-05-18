class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_hash
      t.string :password_salt
      t.datetime :date_of_birth
      t.integer :GPA
      t.integer :sat
      t.integer :phone
      t.boolean :allow_text
      t.boolean :allow_email_notifications

      t.timestamps
    end
  end
end
