class Label < ActiveRecord::Base

  serialize :sender, Hash
  serialize :recipient, Hash
  serialize :dimensions, Hash
  serialize :customs_info, Hash


end