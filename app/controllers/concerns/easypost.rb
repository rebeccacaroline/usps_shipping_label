require 'easypost'

module Easypost
  extend ActiveSupport::Concern

  def to_address
    EasyPost::Address.create(
      name: @label.recipient_name,
      street1: @label.recipient_street1,
      street2: @label.recipient_street2,
      city: @label.recipient_city,
      state: @label.recipient_state,
      zip: @label.recipient_zip
    )
  end

  def from_address
    EasyPost::Address.create(
      name: @label.sender_name,
      street1: @label.sender_street1,
      street2: @label.sender_street2,
      city: @label.sender_city,
      state: @label.sender_state,
      zip: @label.sender_zip
    )
  end

  def parcel
    EasyPost::Parcel.create(
      :length => @label.length,
      :width => @label.width,
      :height => @label.height,
      :weight => @label.weight
    )
  end

  def shipment
    EasyPost.api_key = ENV['EASYPOST_KEY']
    EasyPost::Shipment.create(
      to_address: to_address,
      from_address: from_address,
      parcel: parcel
    )
  end
end
