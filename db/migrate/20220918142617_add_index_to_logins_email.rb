class AddIndexToLoginsEmail < ActiveRecord::Migration[6.1]
  def change
    add_index :logins, :email, unique: true
  end
end
