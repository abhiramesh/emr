class Appointment < ActiveRecord::Base
   attr_accessible :start_time, :title, :category, :user_id
   belongs_to :user
end
