class Article < ApplicationRecord
	#attr_accessible :title, :body
	has_many :comments, dependent: :destroy

	validates :title, :body , :presence => true
	validates :title, :length => { :minimum => 5}
	validates :title, :uniqueness => { :message => "already taken" }
end
