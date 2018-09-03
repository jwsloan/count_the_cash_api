class EnvelopeRepository < Hanami::Repository
  associations do 
    has_many :bills
  end
end
