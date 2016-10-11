class LogController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    # File.open(File.join("#{Rails.root}/lib", 'lib.rb'), 'a') do |f|
    #
    # end
    # @logs = File.read("#{Rails.root}/lib/lib.rb")

    @logs = Log.all
  end

  def create
    # File.open(File.join("#{Rails.root}/lib/", 'lib.rb'), 'a') do |f|
    log = Log.first
    if log.nil?
      log = Log.create
      log.message = 'Logger'
      log.save
    end
    message_from_db = log.message + params[:logline]+"\n"
    log.update(message: message_from_db)

  end
end
