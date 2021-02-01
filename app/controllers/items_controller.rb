class ItemsController < ApplicationController

    def index 
        items = Item.all
        render json: items
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
        params.require(:item).permit(:user_id)
    end

end