class ShortenedUrl < ApplicationRecord
  validates :shortened_url, presence: true, uniqueness: true
  validates :long_url, :user_id, presence: true

  def self.random_code
    SecureRandom.urlsafe_base64(4)
  end

  def self.new_url(user_id, long_url)
    ShortenedUrl.create!(user_id: user_id, long_url: long_url, shortened_url: ShortenedUrl.random_code)
  end

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :visitors,
    through: :visits,
    source: :users

  has_many :visits,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :Visit

end
