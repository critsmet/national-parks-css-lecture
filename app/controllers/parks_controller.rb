class ParksController < ApplicationController
  before_action :get_park, only: [:show, :edit, :destroy]

    def index
      @parks = Park.all
    end

    def show
    end

    def edit
    end

    def new
      @park = Park.new
    end

    def create
      @park = Park.create(park_params)
      redirect_to @park
    end

    def destroy
      @park.destroy
      redirect_to parks_path
    end

    private

    def get_park
      @park = Park.find(params[:id])
    end

    def park_params
      params.require(:park).permit(:name, :size, :ticket_cost, :state_id, :image_url)
    end
end
