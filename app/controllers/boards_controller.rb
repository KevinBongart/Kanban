class BoardsController < ApplicationController
  def show
    @board = Board.includes(lists: { cards: [:todos, :users] }).first
    @inactive_users = User.where(card_id: nil)
  end
end
