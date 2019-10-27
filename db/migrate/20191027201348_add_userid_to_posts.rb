class AddUseridToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :integer
    change_column :posts, :description, :text
  end
end
