class ListsController < ApplicationController
  def show
      @list = current_list
  end
end
