class Blog < ApplicationRecord
    belongs_to :user
  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :summary

  def self.search(search)
  if search
    where('title LIKE ?', "%#{search}%")

else
    flash[:notice] = "Blog not found"
    render :index
end
end
end
