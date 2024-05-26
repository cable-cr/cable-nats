require "nats"

module Cable
  VERSION = "0.1.0"

  class NATSBackend < Cable::BackendCore
    register "nats"
  end
end
