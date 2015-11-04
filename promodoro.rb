#!/usr/bin/env ruby
require "logger"

log_file = File.new("promodoro.log", "a")
log_file.sync = true
@logger = Logger.new(log_file)

def promodoro
  print "Enter your task: "
  task = gets
  time = Time.now
  @logger.info("Start #{Time.now} - #{task}")
  if Time.now - time = 600
    `terminal-notifier -message "15' left"`
  end
  if Time.now - time = 1080
    `terminal-notifier -message "7' left"`
  end
  `sleep 1500 && terminal-notifier -message "over and out 🍄🍄🍄🍄"`
  @logger.info("End #{Time.now}")
end

loop do
  promodoro
end
