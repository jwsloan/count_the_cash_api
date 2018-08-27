require "hanami/interactor"

class DistributeDollars
  include Hanami::Interactor

  expose :distribution

  def initialize

  end

  def call(params)
    @distribution = 
  end
end