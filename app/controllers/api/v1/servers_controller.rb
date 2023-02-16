class Api::V1::ServersController < ApplicationController
  def ping
    ActiveRecord::Base.connection.execute("SELECT 1")

    head :ok
  end
end
