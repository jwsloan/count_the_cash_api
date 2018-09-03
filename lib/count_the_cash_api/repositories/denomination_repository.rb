class DenominationRepository < Hanami::Repository
  associations do 
    has_many :bills
    has_many :envelopes, through: :bills
  end
end
