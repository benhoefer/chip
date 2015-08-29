class Assignment < ActiveRecord::Base
  belongs_to :kid
  belongs_to :user
  has_many :kachings

  enum frequency: [:daily, :weekly, :biweekly, :monthly, :once]

end
