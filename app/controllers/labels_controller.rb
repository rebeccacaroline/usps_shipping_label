class LabelsController < ApplicationController

  include Easypost

  def index
  end

  def create
    permitted = params.require(:label).
                permit(:weight,
                       :sender_name,
                       :sender_street1,
                       :sender_street2,
                       :sender_city,
                       :sender_state,
                       :sender_zip,
                       :recipient_name,
                       :recipient_street1,
                       :recipient_street2,
                       :recipient_city,
                       :recipient_state,
                       :recipient_zip,
                       :width,
                       :length,
                       :height
                )
    @label = Label.new(permitted)
    unless @label.save!
      flash[:error] = "There was something wrong with the label."
      redirect_to index
    end
    @shipment = shipment
    render 'shipment'
  end

  # def ship
  #   @label = Label.find(params[:id])
  #   EasyPost.api_key = ENV['EASYPOST_KEY']
  #   @shipment = shipment
  #   redirect_to shipment
  # end

end