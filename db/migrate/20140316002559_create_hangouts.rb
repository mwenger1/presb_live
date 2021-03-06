class CreateHangouts < ActiveRecord::Migration
  def change
    create_table :hangouts do |t|
      t.datetime :datetime
      t.string :title
      t.integer :max_participants
      t.boolean :recordable
      t.string :hangout_url
      t.string :description
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
