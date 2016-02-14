class Assignment < ActiveRecord::Base
  belongs_to :kid
  belongs_to :user
  has_many :kachings

  enum frequency: [:daily, :weekly, :biweekly, :monthly, :once]

  def done_on?(date)
    kachings.where(completed_on: date).exists?
  end

  def can_be_done_on?(date)
    pp date
    pp frequency
    case frequency.to_sym
    when :daily
      pp send(date.strftime("%a").downcase)
      return send(date.strftime("%a").downcase)
    when :weekly
      return send(start_on.strftime("%a").downcase)
    else
      return false
    end
  end

end
