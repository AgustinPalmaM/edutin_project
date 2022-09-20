class Image < ApplicationRecord

  after_initialize :default_likes_counter

  validates :description, :likes_counter, presence: true
  validates :likes_counter, numericality: { only_integer: true }

  private

  def default_likes_counter
    self.likes_counter ||= 0
  end

end
