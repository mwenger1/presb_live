class Hangout < ActiveRecord::Base
    belongs_to :user

    has_many :hangout_health_tags
    has_many :health_tags, through: :hangout_health_tags

    has_many :hangout_tags
    has_many :tags, through: :hangout_tags

    def is_user_hangout? user_id
      if user_id == self.user_id
        true
      else
        false
      end
    end

    def is_live?
        if self.datetime < Time.now
            true
        else
            false
        end
    end

    def time
        if self.datetime.to_date == Date.today
            "Today " + self.datetime.strftime("%l%p")
        else
            self.datetime.strftime("%-m/%d") + " " + self.datetime.strftime("%l%p")
        end
    end
end
