class DbsController < ApplicationController
    # GET /dbs
  def index
    db = Db.where("lower(env_key)='%#{params[:env_key].downcase}%' OR lower(app_name)='%#{params[:app_name].downcase}%'").first
    render json: db
  end
end
