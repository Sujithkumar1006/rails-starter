class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  # validates :age, ->(age) { age > 20 }

  class << self
    def active
      self.all.where(active: true)
    end
  end

  def activate
    self.update!(active: true)
  end


end
