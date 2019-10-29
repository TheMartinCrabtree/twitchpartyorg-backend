class CreateGameserverinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :gameserverinfos do |t|
      t.string :servername
      t.string :serveraddress

      t.timestamps
    end
  end
end
