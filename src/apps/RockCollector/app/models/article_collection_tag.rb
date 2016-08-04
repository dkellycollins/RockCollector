class ArticleCollectionTag < ApplicationRecord

  belongs_to :article_collection
  has_one :tag

end