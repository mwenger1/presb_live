class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :password
      t.date :dob
      t.boolean :in_hospital
      t.boolean :searchable_by_age
      t.boolean :searchable_by_condition
      t.boolean :is_caregiver
      t.date :dependant_dob

      t.timestamps
    end
  end
end
