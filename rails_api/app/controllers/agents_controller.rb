class AgentsController < ApplicationController
  def create
    agent = Agent.create!(create_params)
    
    render json: agent.id.to_json
  end

  def index
    render json: Agent.all.to_json
  end

  private

  def create_params
    params.permit(:username, :email, :first_name, :last_name, :phone_extension)
  end
end
