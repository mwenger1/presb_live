class CreateHangoutTags < ActiveRecord::Migration
  def change
    create_table :hangout_tags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :hangout, index: true

      t.timestamps
    end
  end
end
