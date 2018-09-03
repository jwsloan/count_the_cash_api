class BillRepository < Hanami::Repository
  associations do 
    belongs_to :envelope
    belongs_to :denomination
  end
end
