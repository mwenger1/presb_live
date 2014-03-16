class HangoutTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :hangout
end
