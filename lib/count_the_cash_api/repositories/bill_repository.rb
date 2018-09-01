class BillRepository < Hanami::Repository
  associations do 
    belongs_to :stack
    belongs_to :denomination
  end
end
