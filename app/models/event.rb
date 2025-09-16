class Event < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: { message: "Email is required" }
  validates :email, uniqueness: { message: "Email has already been taken" }

  # validates :email, presence: true, uniqueness: true, format: { message: "Email should be unique" }
  validates :phoneNumber, length: { is: 10 }

  before_save :format_date

  private
  def format_date
    self.date = Date.parse(self.date.to_s)
  end
end
