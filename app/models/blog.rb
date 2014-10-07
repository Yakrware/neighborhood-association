class Blog < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, :use => :slugged
  validates_presence_of :title, :slug, :body

  belongs_to :user
end
