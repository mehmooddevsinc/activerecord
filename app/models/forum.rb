class Forum < ApplicationRecord
    has_many :polycomments, as: :commentable
end
