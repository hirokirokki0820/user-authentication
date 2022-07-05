class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    # if user&.authenticate(params[:session][:password]) # ぼっち演算子「&.」
      log_in(user)
      # remember_me にチェックしたらユーザーのセッションを永続的にする(cookieに保存する)
      params[:session][:remember_me] == "1" ? remember(user) : forget(user)
      flash[:notice] = "ログインに成功しました"
      redirect_to user
    else
      flash.now[:error] = "ログインに失敗しました"
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path, status: :see_other
  end
end
