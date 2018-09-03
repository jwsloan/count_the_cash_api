require "hanami/interactor"

class CalculateBillsRequired
  include Hanami::Interactor

  expose :counts

  def initialize
    
  end

  def call(params)
    allowed_denominations = params.fetch(:allowed_denominations, [100, 50, 20, 10, 5, 1])
    @counts = []
    remaining = params[:amount]
    @distribution = allowed_denominations.each do |denomination|
      count = remaining / denomination
      @counts << [denomination, count]
      remaining -= (denomination * count)
    end
  end
end