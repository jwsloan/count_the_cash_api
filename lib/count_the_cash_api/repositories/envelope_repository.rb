class EnvelopeRepository < Hanami::Repository
  associations do 
    has_many :stacks
  end
end
