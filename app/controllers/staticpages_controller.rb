class StaticpagesController < ApplicationController
  def landing
    render :landing
  end

  def signup
    render :signup
  end
end