class NotifyController < ApplicationController
  # POST /
  def index
    require 'pusher'
    Pusher.url = "http://19a6c30b18c4c19e98f3:337a099ecf29dd0bc98d@api.pusherapp.com/apps/94226"
    channel = params[:user].concat '_channel'
    Pusher[channel.to_s].trigger('status_update', {
        user: params[:user],
        request_id: params[:request_id],
        status: params[:status],
        id: rand(36**5).to_s(36)
    })

    render json: {"Success" => true}
  end


end