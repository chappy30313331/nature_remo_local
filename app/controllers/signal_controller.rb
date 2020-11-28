class SignalController < ApplicationController
  def read
    response = ReadSignal.call
    if response.code == 200
      render json: { signal: response.to_s }
    else
      render json: { signal: 'Error' }
    end
  end

  def transmit
    button = Button.find(params[:button_id])
    response = SendSignal.call(button.signal)
    if response.code == 200
      render json: { status: 'ok', message: response.to_s }
    else
      render json: { status: 'ng', message: 'Error' }
    end
  end
end
