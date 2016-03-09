class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text    :username, null: false
      t.text    :password, null: false

      t.timestamps null: false
    end
  end
end
