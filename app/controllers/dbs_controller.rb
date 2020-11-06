class DbsController < ApplicationController
    # GET /dbs
  def index
    # return render json: params
    db = Db.where("lower(env_key)='#{params[:env_key].to_s.downcase}' OR lower(app_name)='#{params[:app_name].to_s.downcase}'").first
    render json: db
  end
end
