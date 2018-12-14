class StatesController < ApplicationController

    def index
        @states = State.all 
        render :index
    end

    def show 
        @state = State.find(params[:id])
        render :show
    end

    def new 
        render :new
    end

    def create 
        @state = State.new(state_params)\
    end

    def 
end
