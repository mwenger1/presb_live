class User < ActiveRecord::Base
    has_many :user_tags
    has_many :tags, through: :user_tags

    has_many :user_health_tags
    has_many :health_tags, through: :user_health_tags

    has_many :hangouts
end
