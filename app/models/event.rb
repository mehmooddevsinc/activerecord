class Event < ApplicationRecord
    has_many :polycomments, as: :commentable
end
