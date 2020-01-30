class UsersController < ApplicationController

    def show
        user = User.find_by(email_address: params[:email_address])
        questions = user.questions
        question_objects = questions.map{|question| {question: question, choices: question.choices, decision: question.decision.choice }}
        user_object = {
            user: user,
            questions: question_objects
        }
        # render json: user_object
        render json: user_object
    end

    def create 
        user = User.find_by(email_address: params[:email_address])
        if (!user)
            user = User.create(email_address: params[:email_address])
        end

        questions = user.questions
        question_objects = questions.map{|question| {question: question, choices: question.choices, decision: question.decision.choice }}
        user_object = {
            user: user,
            questions: question_objects
        }
        render json: user_object
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:id, :name, :email_address)
    end
end