class CreateHealthTags < ActiveRecord::Migration
  def change
    create_table :health_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
