class AddIndextoPosts < ActiveRecord::Migration[8.0]
  def change
    add_index :posts, [:id, :user_id], name: "post_user_index"
  end
end
