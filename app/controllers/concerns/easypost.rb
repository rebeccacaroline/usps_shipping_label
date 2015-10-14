require 'easypost'

module EasyPost
  def to_address
  end

  def from_address
  end

  def parcel
  end

  def shipment
    EasyPost::Shipment.create(
      to_address: to_address,
      from_address: from_address,
      parcel: parcel
    )
  end
end
