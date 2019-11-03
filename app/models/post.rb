class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  
  validate :clickbait
  
  def clickbait
    if title.exclude? ("Won't Believe") && title.exclude? ("Secret") && title.exclude? ("Won't Believe") && title.exclude? ("Won't Believe") && title.exclude? ("Won't Believe") &&
  
end
