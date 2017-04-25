class Blog < ApplicationRecord
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :comments, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :summary
  validates_presence_of :commentable
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
      end
  end


end
