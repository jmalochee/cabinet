class Api::V1::MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def show
    render json: { member: Member.find(params[:id]), cards: Member.find(params[:id]).cards }
  end

end
