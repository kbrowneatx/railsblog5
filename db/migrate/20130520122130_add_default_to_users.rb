class AddDefaultToUsers < ActiveRecord::Migration
  def change
    # Set default value
    change_column_default :users, :role, "reader"
  end
end
