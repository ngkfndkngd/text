class LogsController < ApplicationController
  before_action :authenticate_user!

  def index
    @log = Log.new
    @logs = current_user.logs
  end

  def create
    @log = Log.new(log_params)
    @log.user_id = current_user.id
    @log.save
    redirect_to logs_path
  end

  def show
    @log = Log.find(params[:id])
  end

  def edit
    @log = Log.find(params[:id])
    if @log.user != current_user
      redirect_to log_path(@log)
    end
  end

  def update
    @log = Log.find(params[:id])
    @log.user_id = current_user.id
    @log.update(log_params)
    redirect_to logs_path, notice: '変更が登録されました。'
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to logs_path
  end

  private

  def log_params
    params.require(:log).permit(:record_status, :user_id, :start_time)
    # .merge(user_id: current_user.id)
  end
end
