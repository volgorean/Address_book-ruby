class Phone
  @@phones = []

  def initialize(phone)
    @phone = phone
    @@phones << phone
  end

  def Phone.all
    @@phones
  end

  def Phone.clear
    @@phones = []
  end

  def phone_out
    @phone
  end
end
