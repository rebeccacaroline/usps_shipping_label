class LabelsController < ApplicationController

  def index
  end

  def create
    permitted = params.require(:label).
                permit(:sender, :recipient, :weight, :dimensions, :customs_info)
    label = Label.build(permitted)
    unless label.save!
      flash[:error] = "There was something wrong with the label."
    end
  end
end