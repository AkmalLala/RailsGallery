class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @pic_gals = PicGal.all
    render file: "/app/views/home"
  end
end
