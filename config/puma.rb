threads_count = Integer(ENV.fetch("RAILS_MAX_THREADS", 2))
timeout = Integer(ENV.fetch("WORKER_TIMEOUT", 3600)) # seconds

workers(0)
threads(threads_count, threads_count)
worker_timeout(timeout)

port ENV["PORT"] || 3000
environment ENV["RAILS_ENV"] || "development"
