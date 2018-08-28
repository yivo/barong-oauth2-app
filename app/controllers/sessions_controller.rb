class SessionsController < ApplicationController
  def create
    redirect_to %[#{ENV.fetch("BARONG_OAUTH2_REDIRECT_URL")}?#{request.env.fetch("omniauth.auth").fetch("credentials").to_query}]
  end
end
