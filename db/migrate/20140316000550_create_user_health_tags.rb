class CreateUserHealthTags < ActiveRecord::Migration
  def change
    create_table :user_health_tags do |t|
      t.belongs_to :user, index: true
      t.belongs_to :health_tag, index: true

      t.timestamps
    end
  end
end
