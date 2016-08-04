class ArticleTag < ApplicationRecord

  belongs_to :article
  has_one :tag

end