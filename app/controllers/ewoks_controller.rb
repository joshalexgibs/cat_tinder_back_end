class EwoksController < ApplicationController
    def index
        @ewoks = Ewok.all
        render json: @ewoks
    end
    def create
        @ewok = Ewok.create(ewok_params)
        if @ewok.valid?
            render json: @ewok
        else
            render json: @ewok.errors, status: :unprocessable_entity
        end
    end
    
    private
    def ewok_params
        params.require(:ewok).permit(:name, :age, :enjoys, :img)
    end
end
