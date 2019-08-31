class ApplicationController < ActionController::Base
protect_from_forgery without: :exeption

  def hello_world
    render html: "Hello World!!"
  end
end
