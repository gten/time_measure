module TimeMeasure
  def perf_init
    @perf = Time.now
  end

  def perf_measure(logger = nil)
    if logger
      logger.info "$" * 10
      logger.info caller_locations[0]
      logger.info Time.now - @perf
    else
      puts "$" * 10
      puts caller_locations[0]
      puts Time.now - @perf
    end
    @perf = Time.now
  end
end