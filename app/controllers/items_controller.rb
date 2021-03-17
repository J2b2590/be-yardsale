class ItemsController < ApplicationController

    def index 
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end

    def create
        item = Item.create(item_params)
        render json: item
    end

    def destroy
        item = Item.find(params[:id])
        Item.destroy(item.id)
        render json: item
    end

    private

    def item_params
        params.require(:item).permit(:name,:price,:user_id,:yardsale_id)
    end

end