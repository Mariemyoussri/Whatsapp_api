class RegostrationController < ApplicationController

  def new
    User.create!(params)
  end
end