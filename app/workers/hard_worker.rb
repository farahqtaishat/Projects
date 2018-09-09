class HardWorker
  include Sidekiq::Worker
  #sidekiq_options queue: 'high'
  def perform(file_name, contant)
    f = File.new(file_name, 'a+')
    f.puts contant + Time.now.to_s
    f.close
  end

end
