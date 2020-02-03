class QuestionsController < ApplicationController
    
    def show
        question = Question.find_by(id: params[:id])
        render json: question
    end

    def create
        puts('hello')
        puts(params[:choices])
        puts('hello????')
        question = Question.create(title: params[:title], user_id: params[:user_id])

        choices = params[:choices].map{|choice| Choice.create(title: choice[:title], weight: choice[:weight], question_id: question.id)}

        qc=question.choices
        question_object = {
            question: question,
            choices: qc
        }
        render json: question_object
    end

    def update
        question = Question.find_by(id: params[:id])
        question.update(params)
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

    # private

    # def question_params
    #     params.require(:question).permit(:id, :title, :user_id, :choices => [:title, :weight])
    # end


end
