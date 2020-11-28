class SignalController < ApplicationController
  def read
    response = ReadSignal.call
    if response.code == 200
      render json: { signal: response.to_s }
    else
      render json: { signal: 'Error' }
    end
  end
end
