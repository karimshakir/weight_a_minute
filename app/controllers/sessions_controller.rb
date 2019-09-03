class SessionsController < ApplicationController
    def create
      player = Player.find_by(name: params[:name])
      if player
        jwt = JWT.encode(
          {
            user_id: player.id, # the data to encode
            exp: 24.hours.from_now.to_i # the expiration time
          },
          Rails.application.credentials.fetch(:secret_key_base), # the secret key
          'HS256' # the encryption algorithm
        )
        render json: {jwt: jwt, user_id: player.id}, status: :created
      else
        render json: {}, status: :unauthorized
      end
    end
end

