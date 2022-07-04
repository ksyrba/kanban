class TopController < ApplicationController
  def index
    @lists = List.order("created_at ASC")
  end
end
