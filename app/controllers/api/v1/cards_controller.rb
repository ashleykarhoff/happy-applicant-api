class Api::V1::CardsController < ApplicationController
    def index
        render json: Card.all
    end

    def show
        render json: Card.find(params[:id])
    end

    def create
        Card.create(card_params)
    end

    def update
        Card.update(card_params)
    end

    def destroy
        card = Card.find(params[:id])
        Card.destory(card)
    end

    private

    def card_params
        params.require(:card).permit(:job_title, :company, :company_url, :company_logo, :url, :location, :description, :board_column_id)
    end
end
