class Comment < ApplicationRecord
    belongs_to :blog

    validates_presence_of :username
    validates_presence_of :comment_text
end
