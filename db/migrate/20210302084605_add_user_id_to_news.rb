class AddUserIdToNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :user_id, :reference
  end
end
