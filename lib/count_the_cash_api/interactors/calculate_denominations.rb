require "hanami/interactor"

class CalculateDenominations
  include Hanami::Interactor

  expose :counts

  def initialize(repository: DenominationRepository.new)
    @repository = repository
  end

  def call(params)
    allowed_denominations = params.fetch(:allowed_denominations, [100, 50, 20, 10, 5, 1])
    @counts = []
    remaining = params[:amount]
    allowed_denominations.each do |value|
      count = remaining / value
      @counts << [value, count]
      remaining -= (value * count)
    end
  end
end