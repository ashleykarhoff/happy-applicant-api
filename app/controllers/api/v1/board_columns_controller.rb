class Api::V1::BoardColumnsController < ApplicationController
    def index
        render json: BoardColumn.all, include: ['cards']
    end

    def show
        render json: BoardColumn.find(params[:id]), include: ['cards']
    end

    def create
        BoardColumn.create(board_column_params)
    end

    def update
        BoardColumn.update(board_column_params)
    end

    def destroy
        board_column = BoardColumn.find(params[:id])
        BoardColumn.destory(board_column)
    end

    private

    def board_column_params
        params.require(:board_column).permit(:title, :applicant_id)
    end
end
