class UserHealthTag < ActiveRecord::Base
  belongs_to :user
  belongs_to :health_tag
end
