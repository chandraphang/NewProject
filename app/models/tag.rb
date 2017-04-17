class Tag < ApplicationRecord
    has_many :taggings, dependent: :destroy
    has_many :blogs, through: :taggings

    def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")

    end
  end

end
