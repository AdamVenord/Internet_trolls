class StuffsController < ApplicationController
  before_action :set_board
  before_action :set_stuff, only: [:show, :edit, :update, :destroy]

  def index
    @stuffs = @board.stuffs
  end

  def show
  end

  def new
    @stuff = @board.stuffs.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @stuff = @board.stuffs.new(stuff_params)

    if @stuff.save
      redirect_to [@board, @stuff]
    else
      render :new
    end
  end

  def update
    if @stuff.update(stuff_params)
      redirect_to [@board, @stuff]
    else
      render :edit
    end
  end

  def destroy
    @stuff.destroy
    redirect_to board_stuffs_path(@board)
  end

  private
    def set_board
      @board = Board.find(params[:board_id])
    end

    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    def stuff_params
      params.require(:stuff).permit(:name, :body)
    end
end