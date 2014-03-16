class CreateUserHealthTags < ActiveRecord::Migration
  def change
    create_table :user_health_tags do |t|
      t.user :belongs_to
      t.health_tag :belongs_to

      t.timestamps
    end
  end
end
