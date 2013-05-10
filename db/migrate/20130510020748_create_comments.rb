class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.reference :post
      t.reference :user

      t.timestamps
    end
  end
end
