class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: %i(slugged history finders)
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end
end
