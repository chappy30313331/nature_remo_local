class ReadSignal
  include Service

  def call
    uri = URI::HTTP.build(host: ENV['NATURE_REMO_HOST'], path: '/messages')
    HTTP.timeout(3)
        .headers('X-Requested-With' => 'local')
        .get(uri)
  end
end
