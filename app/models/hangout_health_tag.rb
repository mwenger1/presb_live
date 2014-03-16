class HangoutHealthTag < ActiveRecord::Base
  belongs_to :health_tag
  belongs_to :hangout
end
