class Kid < ActiveRecord::Base
  belongs_to :user
  has_many :assignments
  has_many :kachings

  validates :name, :pin, presence: true

end
