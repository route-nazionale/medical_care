class Location < ActiveRecord::Base

  has_many :visits

  def to_s
    name
  end
end
