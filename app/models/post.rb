class Post < ApplicationRecord
    has_many :polycomments, as: :commentable
end
