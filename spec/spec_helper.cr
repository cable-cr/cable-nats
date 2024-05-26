require "spec"
require "cable"
require "../src/cable-nats"

Cable.configure do |settings|
  settings.route = "/updates"
  settings.token = "test_token"
  settings.url = ENV.fetch("CABLE_BACKEND_URL", "nats://localhost:4222")
  settings.backend_class = Cable::NATSBackend
  settings.backend_ping_interval = 2.seconds
  settings.restart_error_allowance = 2
end

Spec.before_each do
  Cable.restart
end
