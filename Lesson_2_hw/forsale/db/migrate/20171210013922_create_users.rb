class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps
    end
  end
end
