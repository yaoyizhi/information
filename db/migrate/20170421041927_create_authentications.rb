class CreateAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :authentications do |t|
      t.string :user_name
      t.string :user_adress
      t.integer :phone_number

      t.timestamps
    end
  end
end
