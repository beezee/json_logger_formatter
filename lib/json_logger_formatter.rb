require "json_logger_formatter/version"
require "logger"
require "json"

module JsonLoggerFormatter
  class Formatter < ::Logger::Formatter
    def self.call(severity, time, progname, msg)
      line = {severity: severity, time: time, msg: msg}
      line[:progname] = progname if progname
      "#{line}\n"
    end
  end
end
