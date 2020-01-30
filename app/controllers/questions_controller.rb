class QuestionsController < ApplicationController
    
    def show
        question = Question.find_by(id: params[:id])
        render json: question
    end

    def create
        question = Question.create(question_params)
        render json: question
    end

    def update
        question = Question.find_by(id: params[:id])
        question.update(question_params)
        render json: question
    end

    def destroy
        question = Question.find_by(id: params[:id])
        choices = question.choices
        answer = question.decision
        answer.destroy
        choices.map {|choice|choice.destroy}
        temp = question
        question.destroy
        render json: temp
    end

    private

    def question_params
        params.require(:question).permit(:id, :title, :user_id)
    end


end
