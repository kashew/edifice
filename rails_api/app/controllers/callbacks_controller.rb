class CallbacksController < ApplicationController
  def index
    render json: ::Callback.all.to_json
  end
end
