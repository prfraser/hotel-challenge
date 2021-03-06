class WelcomeController < ApplicationController
	before_action :authenticate_admin!, only: [:admin]

	def index
		
	end

	def contact
		
	end

	def enquiry
		@enquiry = Enquiry.new(enquiry_params)
		@admin = Admin.first

    respond_to do |format|
      if @enquiry.save
      	AdminNotifierMailer.send_notice_email(@admin).deliver
        format.html { redirect_to root_path, notice: 'Enquiry was successfully submitted.' }
      else
        format.html { render :contact }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
	end

	def guestrooms
		@rooms = Room.all
	end

	def about
		
	end

	def admin
		@enquiries = Enquiry.all
	end

  private
	  def enquiry_params
      params.require(:enquiry).permit(:name, :email, :phone, :message, :room)
    end
end
