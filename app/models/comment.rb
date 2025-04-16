class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true, length: {maximum: 50}
  validates :body, length: {maximum: 500}
end
