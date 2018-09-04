class DenominationRepository < Hanami::Repository
  associations do 
    has_many :bills
    has_many :envelopes, through: :bills
  end

  def by_value(value)
    denominations.where(value: value).one
  end

  def for_values(values)
    denominations.where(value: values).to_a
  end
end
