class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        questions = user.questions
        if (questions.length > 0)
            sorted = questions.sort_by{|question| question.decision.updated_at}.reverse()

            question_objects = sorted.map{|question| {question: question, choices: question.choices, decision: {id: question.decision.id, choice: question.decision.choice}}}
            user_object = {
                user: user,
                questions: question_objects
            }
        else 
            user_object = {
                user: user,
                questions: []
            }
        end
        render json: user_object
    end

    def create 

        user = User.find_by(email: params[:email])
        if (!user)
            user = User.create(email: params[:email], name: params[:name])
        end

        questions = user.questions
        if (questions.length > 0)
            sorted = questions.sort_by{|question| question.decision.updated_at}.reverse()
            question_objects = sorted.map{|question| {question: question, choices: question.choices, decision: {id: question.decision.id, choice: question.decision.choice}}}
            user_object = {
                user: user,
                questions: question_objects
            }
        else 
            user_object = {
                user: user,
                questions: []
            }
        end
        render json: user_object
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:id, :name, :email)
    end
end