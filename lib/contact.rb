class Contact
  @@contact_info = []
  @@contacts = []

  def Contact.all
    @@contact_info
  end

  def name
    @name
  end

  def Contact.clear
    @@contact_info = []
  end

  def initialize(name)
    @name = name
    @@contact_info << name
    @addresses = []
    @phones = []
    @emails = []
  end

  def rename(name)
    @name = name
    @@contact_info[0] = name
  end

  def add_address(address)
    address = Address.new(address)
    @addresses << address
  end

  def add_phone(phone)
    phone = Phone.new(phone)
    @phones << phone
  end

  def add_email(email)
    email = Email.new(email)
    @emails << email
  end

  def info_out
    puts "Name: " + @name
    @addresses.each_with_index do |key, index|
      puts "Address " +(index+1).to_s+ ": "+ key.address_out
    end
    @emails.each_with_index do |key, index|
      puts "Email " +(index+1).to_s+ ": "+ key.email_out
    end
    @phones.each_with_index do |key, index|
      puts "Phone " +(index+1).to_s+ ": "+ key.phone_out
    end
  end

 end
