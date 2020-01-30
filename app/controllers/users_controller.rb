class UsersController < ApplicationController
    def index
        users=User.all
        render json: user_object 

    end

    def show
        user = User.find_by(id: params[:id])
        questions = user.questions
        question_objects = questions.map{|question| {question: question, choices: question.choices, decision: question.decision.choice }}
        user_object = {
            user: user,
            skills: user.skills,
            projects: user.projects,
            educations: user.educations
        }
        # render json: user_object
        render json: user_object
    end

    def create 
        # user_object = {}
        user = User.find_by(email_address: params[:email_address])
        if (!user)
            user = User.create(email_address: params[:email_address])
        end

        # # user = User.find_by(email_address: 'tt@gmail.com')
        # user_object = {
        #     user: user,
        #     skills: user.skills,
        #     projects: user.projects,
        #     educations: user.educations,
        #     experiences: user.experiences,
        #     accolades: user.accolades
        # }
        # # render json: user_object
        render json: user
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