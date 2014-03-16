class Hangout < ActiveRecord::Base
    belongs_to :user

    has_many :hangout_health_tags
    has_many :health_tags, through: :hangout_health_tags

    has_many :hangout_tags
    has_many :tags, through: :hangout_tags
end
