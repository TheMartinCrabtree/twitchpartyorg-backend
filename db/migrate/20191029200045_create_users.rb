class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.password_digest :tokeninfo
      t.boolean :subscriber
      t.boolean :follower
      t.boolean :administrator

      t.timestamps
    end
  end
end
