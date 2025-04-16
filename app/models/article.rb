class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :text, length: {maximum: 1000}
  before_validation :capitalize_title

  def capitalize_title
    return if title.blank?
  
    self.title = title.strip.sub(/\A\w/) { |c| c.upcase }
  end

end
