class Api::V1::MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def show
    member = Member.find(params[:id])
    cards = {}

    member.cards.each do |card|
      card.content ||= "There is no #{card.card_name} content to display for #{member.first_name} #{member.last_name} at this time."
      cards[card.card_type.to_sym] = card
    end

    render json: { member: Member.find(params[:id]), cards: cards }
  end

end
