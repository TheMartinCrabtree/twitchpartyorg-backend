class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :bodytext
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
