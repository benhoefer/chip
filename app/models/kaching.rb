class Kaching < ActiveRecord::Base
  belongs_to :kid
  belongs_to :user
  belongs_to :assignment
end
