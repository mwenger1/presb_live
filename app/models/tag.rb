class Tag < ActiveRecord::Base
    has_many :user_tags
    has_many :users, through: :user_tags

    has_many :hangout_tags
    has_many :hangouts, through: :hangout_tags
end
