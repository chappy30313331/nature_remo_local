class SendSignal
  include Service

  def initialize(signal)
    @signal = signal
  end

  def call
    uri = URI::HTTP.build(host: ENV['NATURE_REMO_HOST'], path: '/messages')
    HTTP.timeout(3)
        .headers('X-Requested-With' => 'local')
        .post(uri, body: @signal)
  end
end
