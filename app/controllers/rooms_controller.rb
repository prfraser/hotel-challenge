class RoomsController < ApplicationController
	before_action :authenticate_admin!
	before_action :set_room, only: [:show, :edit, :update, :destroy]

	def new
		@room = Room.new
	end

	def show
		
	end

	def create
		@room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
  end

    def update
    respond_to do |format|
      if @room.update(tweet_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	def index
		@rooms = Room.all
	end

	private
		def set_room
			@room = Room.find(params[:id])
		end

    def room_params
      params.require(:room).permit(:title, :description, :price_per_night)
    end
end
