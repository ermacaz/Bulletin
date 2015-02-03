class SubBoardsController < ApplicationController

  before_action :get_sub_board


  def index
    @topics = @sub_board.topics.order_by_time
  end


  private
    def get_sub_board
      @sub_board ||= SubBoard.find(params[:id])
    end
end
