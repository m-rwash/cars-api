module Api::V1
	class CarsController < ApplicationController
		def index
			@cars = Car.all
			render json: @cars
		end

		def create
			@car = Car.create(car_params)
			render json: @car
		end

		def destroy
			@car = Car.find(params[:id])
			if @car.destroy
		      head :no_content, status: :ok
		    else
		      render json: @car.errors, status: :unprocessable_entity
		    end
		end

		def update
			@car = Car.find(params[:id])
			@car.update_attributes(car_params)
			render json: @car
		end

		private
		  def car_params
		  	params.require(:car).permit(:id, :name, :price, :horsepower, :car_type)
		  end
	end
end