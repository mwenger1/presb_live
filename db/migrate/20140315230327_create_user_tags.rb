class CreateUserTags < ActiveRecord::Migration
  def change
    create_table :user_tags do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
