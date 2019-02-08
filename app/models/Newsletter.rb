class Newsletter < ApplicationRecord
  belongs_to :user
  validates :name,

            presence: true,
            uniqueness: true

  validates :location,

            presence: true,
            uniqueness: true

    def self.order_by_creation
      order(created_at: :desc)
    end
end
