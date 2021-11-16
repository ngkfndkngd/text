class LogsController < ApplicationController
  def index
    @log = Log.new
    @logs = current_user.logs
  end

  def create
    #Log.create!(log_params)
    # byebug
    @log = Log.new(log_params)
    @log.save
    redirect_to logs_path
  end

  def edit
     @log = Log.find(params[:id])
    if @log.user != current_user
      redirect_to logs_path
    end
  end

  def update
    @log = Log.find(params[:id])
    if @log.update(log_params)
      redirect_to logs_path, notice: 'You have creatad book successfully.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def log_params
    params.require(:log).permit(:record_status, :user_id, :start_time).merge(user_id: current_user.id)
  end

end
