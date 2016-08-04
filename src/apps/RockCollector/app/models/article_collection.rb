##
# Represents a collection of articles.
class ArticleCollection < ApplicationRecord

  attr :name, :description

  has_many :articles

end