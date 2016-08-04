##
# Represents an article.
class Article < ApplicationRecord

  belongs_to :article_collection

  validates :title, presence: true,
                    length: {minimum: 1, maximum: 256}
end
