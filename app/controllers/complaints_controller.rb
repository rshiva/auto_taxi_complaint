class ComplaintsController < ApplicationController

	def index
	end

	def new
		@complaint=Complaint.new
		@complaint.build_vehicle
		@complaint.build_user
		respond_to do |format|
	    format.html # new.html.erb
  	  format.json { render json: @complaint }
  	end
	end

	def create
		puts "in"
		@complaint=Complaint.new(params[:complaint])
			if @complaint.save
				redirect_to @complaint, notice: "Successfully created complaint."
			else
				render :new
			end
	end

	def update
    @complaint = Complaint.find(params[:id])
    if @complaint.update_attributes(params[:vehicle])
      redirect_to @complaint, notice: "Successfully updated complaint."
    else
      render :edit
    end
  end


  def show
  	@complaint=Complaint.find params[:id]
  end


end
