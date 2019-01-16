class PagesController < ApplicationController
  def number_checker
    @number = params[:number]

    if @number.nil?
      flash.now[:notice] = "Welcome! We're glad you are here."
      @even_check = nil
    elsif @number.to_i.to_s != @number
      flash.now[:error] = "Ahhh, sayy wha?"
      @even_check = nil
    elsif @number.to_i.even?
      @even_check = "Even"
    else
      @even_check = "Odd"
    end

    #render "number_checker"
  end
end
