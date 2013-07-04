class Ticket < ActiveRecord::Base
	searcher do
		label :tag, :from => :tags, :field => :name
		label :state, :from => :state, :field => "name"
	end

	after_create :creator_watchers_me

	has_many :assets
	accepts_nested_attributes_for :assets

	has_many :comments
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :watchers, :join_table => "ticket_watchers", :class_name => "User"

  belongs_to :project
	belongs_to :user
	belongs_to :state
	validates :title, :presence => true
	validates :description, :presence => true, :length => { :minimum => 10 }

	def tag!(tags)
		tags = tags.split(' ').map do |tag|
			Tag.find_or_create_by_name(tag)
		end
		self.tags << tags
	end
private
	def creator_watchers_me
		#p "ticket model #{self.watchers.inspect}"
		self.watchers << user
		#p "ticket model #{self.watchers.inspect}"
	end
end
