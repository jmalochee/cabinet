class Api::V1::MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def show
    render json: Member.find(params[:id])
  end

end
