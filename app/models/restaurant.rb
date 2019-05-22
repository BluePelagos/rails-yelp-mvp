class Restaurant <

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  validates :category, exclusion: { in: %w(neptunian) }
end
