class AdminController < ApplicationController
  layout 'admin'
  
  before_filter :check_admin_loggedin, :except => [:login, :enter]


  def index
  end
  
  def login
  end

  def enter
    if params[:login] == "Admin" && params[:password] == "admin"
      flash[:notice] = "Zalogowano jako: Admin"
      session[:admin_loggedin] = true
      session[:account_type] = "Admin"
      redirect_to admin_path
    else
      flash[:alert] = "Niepoprawne dane."
      redirect_to admin_login_path
    end
  end

  def logout
    session[:logout_requested] = true
    session[:admin_loggedin] = false
    flash[:notice] = "Zostales wylogowany."
    redirect_to admin_login_path   # (root_path)
  end
  
  
  protected
  def check_admin_loggedin
    if session[:admin_loggedin] != true
      redirect_to admin_login_path
    end
  end
end
