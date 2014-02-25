class BoardsController < ApplicationController
  def show
    @board = Board.includes(lists: { cards: [:todos, :users] }).first
  end
end
