class CreateHangoutHealthTags < ActiveRecord::Migration
  def change
    create_table :hangout_health_tags do |t|
      t.belongs_to :health_tag, index: true
      t.belongs_to :hangout, index: true

      t.timestamps
    end
  end
end
