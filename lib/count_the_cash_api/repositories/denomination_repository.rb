class DenominationRepository < Hanami::Repository
  associations do 
    has_many :bills
    has_many :stacks, through: :bills
  end
end
