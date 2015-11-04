#!/usr/bin/env ruby 
require "logger"

log_file = File.new("promodoro.log", "a")
log_file.sync = true
@logger = Logger.new(log_file)

def promodoro
  print "Enter your task: "
  task = gets
  @logger.info("Start #{Time.now} - #{task}")
  `sleep 1500 && terminal-notifier -message "over and out"`
  @logger.info("End #{Time.now}")
end

loop do
  promodoro
end