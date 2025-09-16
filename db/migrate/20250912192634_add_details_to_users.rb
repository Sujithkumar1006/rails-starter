class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :active, :boolean
    add_column :users, :phone, :integer
    add_column :users, :location, :string
  end
end
