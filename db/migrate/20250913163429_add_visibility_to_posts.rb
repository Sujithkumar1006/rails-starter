class AddVisibilityToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :visible, :boolean,  default: true
  end
end
