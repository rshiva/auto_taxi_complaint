class VehiclesController < ApplicationController

	def new
		@vehicle=Vehicle.new
		@complaints=@vehicle.complaints.build
	end

	def index
	   @vehicles = Vehicle.all
	 end

	 def create
    @vehicle = Vehicle.new(params['vehicle'])
    if @vehicle.save
      redirect_to @vehicle, notice: "Successfully created complaint."
    else
      render :new
    end
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update_attributes(params[:survey])
      redirect_to @vehicle, notice: "Successfully updated complaint."
    else
      render :edit
    end
  end


  def show
  	@vehicle=Vehicle.find params[:id]
  end

	
end
