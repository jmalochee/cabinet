class Api::V1::MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def show
    member = Member.find(params[:id])
    cards = {}

    member.cards.each do |card|
      cards[card.card_type.to_sym] = card
    end

    render json: { member: Member.find(params[:id]), cards: cards }
  end

end
