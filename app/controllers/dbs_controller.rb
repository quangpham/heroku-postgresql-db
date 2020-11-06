class DbsController < ApplicationController
    # GET /dbs
  def index
    @dbs = Db.all
    render json: @dbs
  end
end
