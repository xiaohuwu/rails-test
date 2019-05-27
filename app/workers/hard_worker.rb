class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    logger.info "args: #{args}"
  end
end
