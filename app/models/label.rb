class Label < ActiveRecord::Base

  validates_presence_of :length
  validates_presence_of :width
  validates_presence_of :height
  validates_presence_of :weight
end