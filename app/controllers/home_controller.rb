class HomeController < ApplicationController
  def index
    render inertia: 'App'
  end
end
