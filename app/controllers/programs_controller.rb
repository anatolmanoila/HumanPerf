class ProgramsController < ApplicationController
  def new
    @program = Program.new
  end

  def show
    @program = Program.find(params[:id])
  end

  def create
  end

  def update
  end

  def edit
  end
end
