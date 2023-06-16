class PingController < ApplicationController
  # Controller actions should be accessible without requiring authenication.
  skip_before_action CASClient::Frameworks::Rails::Filter
  skip_before_action :whitelist_cas_user

  def verify
    connected = ActiveRecord::Base.connection_pool.with_connection(&:active?)

    if connected
      render plain: 'Application is OK'
    else
      render plain: 'Cannot connect to database!', status: :service_unavailable
    end
  end
end
