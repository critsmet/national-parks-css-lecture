class StatesController < ApplicationController
  before_action :get_state, only: [:show, :edit, :destroy]

    def index
      @states = State.all
    end

    def show
    end

    def edit
    end

    def new
      @state = State.new
    end

    def create
      @state = State.create(state_params)
      redirect_to state_path
    end

    def destroy
      @state.destroy
      redirect_to states_path
    end

    private

    def get_state
      @state = State.find(params[:id])
    end

    def state_params
      params.require(:state).permit(:name, :slogan, :population, :image_url)
    end
end
