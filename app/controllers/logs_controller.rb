class LogsController < ApplicationController
  def index
    @log = Log.new
    @logs = current_user.logs
  end

  def create
    
    #Log.create!(log_params)
    log_tmp = Log.new(log_params)
    log_tmp.user_id = current_user.id
    log_tmp.save
    redirect_to logs_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def log_params
    params.require(:log).permit(:record_status, :user_id, :start_time)
  end

end
