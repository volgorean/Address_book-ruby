class Address
  @@addresses = []
  def initialize(address)
    @address = address
    @@addresses << address
  end
  def Address.all
    @@addresses
  end
  def Address.clear
    @@addresses = []
  end
  def address_out
    @address
  end
end
