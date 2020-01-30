class DecisionsController < ApplicationController
    def index
        decision = Decision.all
        render json: decision
    end
    
    def show
        decision = Decision.find_by(id: params[:id])
        render json: decision
    end

    def create
        decision = Decision.create(decision_params)
        render json: decision
    end

    def update
        decision = Decision.find_by(id: params[:id])
        decision.update(decision_params)
        render json: decision
    end

    def destroy
        decision = Decision.find_by(id: params[:id])
        
        temp = decision
        decision.destroy
        render json: temp
    end

    private

    def decision_params
        params.require(:decision).permit(:id, :choice_id, :question_id)
    end
end
