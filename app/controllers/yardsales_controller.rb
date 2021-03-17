class YardsalesController < ApplicationController
    def index
        yardsales = Yardsale.all
        render json: yardsales, except: [:created_at, :updated_at]
    end

    def create
        yardsale = Yardsale.create(yardsale_params)
        render json: yardsale
    end

    def destroy
        
        yardsale = Yardsale.find(params[:id])
        yardsale.destroy(yardsale.id)
        render json: yardsale
    end

    private

    def yardsale_params
        params.require(:yardsale).permit(:streetAddress, :zipcode,:user_id)
    end
end
