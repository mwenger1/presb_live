class HealthTag < ActiveRecord::Base
    has_many :user_health_tags
    has_many :users, through: :user_health_tags

    has_many :hangout_health_tags
    has_many :hangouts, through: :hangout_health_tags
end
