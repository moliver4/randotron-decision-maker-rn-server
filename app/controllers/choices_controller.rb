class ChoicesController < ApplicationController
    def index
        choices = Choice.all
        render json: choices
    end
    
    def show
        choice = Choice.find_by(id: params[:id])
        render json: choice
    end

    def create
        choice = Choice.create(choice_params)
        render json: choice
    end

    def update
        choice = Choice.find_by(id: params[:id])
        choice.update(choice_params)
        render json: choice
    end

    def destroy
        choice = Choice.find_by(id: params[:id])
        temp = choice
        choice.destroy
        render json: temp
    end

    private

    def choice_params
        params.require(:choice).permit(:id, :title, :reason, :weight, :question_id)
    end
end
