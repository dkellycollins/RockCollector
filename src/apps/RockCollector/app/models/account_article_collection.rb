##
# Represents the association of an account and article collection.
class AccountArticleCollection < ApplicationRecord

  belongs_to :account
  has_one :article_collection

end