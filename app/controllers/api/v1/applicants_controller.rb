class Api::V1::ApplicantsController < ApplicationController
    def index
        render json: Applicant.all, include: ['board_columns' => {:include => :cards}]
    end

    def show
        render json: Applicant.find(params[:id]), include: ['board_columns' => {:include => :cards}]
    end

    def create
        Applicant.create(applicant_params)
    end

    def update
        Applicant.update(applicant_params)
    end

    def destroy
        applicant = Applicant.find(params[:id])
        Applicant.destory(applicant)
    end

    private

    def applicant_params
        params.require(:applicant).permit(:first_name, :last_name, :email, :password)
    end
end
