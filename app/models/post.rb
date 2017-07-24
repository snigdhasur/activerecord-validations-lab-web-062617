
class Post < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 10}
	validates :content, presence: true, length: {minimum: 250}
	validates :summary, presence: true, length: {maximum: 250}
	validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}


	validates_each :title do |post, attr, value|
		 post.errors.add(attr, 'must be clickbait') if value !~ /Won't Believe/ || /Secret/ || /Top \d/ || /Guess/
	end

end 
