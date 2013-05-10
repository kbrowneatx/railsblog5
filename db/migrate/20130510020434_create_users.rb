class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :type
      t.text :bio
      t.boolean :post_anonymously
      t.string :website
      t.string :twitter

      t.timestamps
    end
  end
end
