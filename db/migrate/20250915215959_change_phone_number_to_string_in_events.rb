class ChangePhoneNumberToStringInEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :events, :phoneNumber
    add_column :events, :phoneNumber, :string
  end
end
