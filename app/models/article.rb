class Article < ApplicationRecord
  # You may be wondering where the title and body attributes are defined.
  # Active Record automatically defines model attributes for every table column,
  # so you don't have to declare those attributes in your model file.
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
