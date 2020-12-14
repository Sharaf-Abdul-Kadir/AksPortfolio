class Post < ApplicationRecord
    enum status: { draft: 0, published: 1 }
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    validates_presence_of :title, :body, :topic_id

    belongs_to :topic
    belongs_to :user

    def self.special_blogs
        all
    end

end
