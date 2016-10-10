class LogController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    File.open(File.join(Rails.root, 'file.rb'), 'a') do |f|

    end
    @logs = File.read("#{Rails.root}/file.rb")
  end

  def create
    File.open(File.join(Rails.root, 'file.rb'), 'a') do |f|
      f.puts params[:logline]
    end
  end
end
