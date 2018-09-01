class StackRepository < Hanami::Repository
  associations do 
    has_many :bills
    belongs_to :envelope
  end
end
