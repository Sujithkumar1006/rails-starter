class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.integer :phoneNumber
      t.integer :guests
      t.string :eventName
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
