class Contact
  @@contact_info = []
  @@contacts = []

  def Contact.all
    @@contact_info
  end

  def name
    @name
  end

  def save
    @@contact_info << Address.all
    Address.clear
    @@contact_info << Phone.all
    Phone.clear
    @@contact_info << Email.all
    Email.clear
  end

  def Contact.clear
    @@contact_info = []
  end

  def initialize(name)
    @name = name
    @@contact_info << name
  end

  def rename(name)
    @name = name
    @@contact_info[0] = name
  end

  def add_address(address)
    address = Address.new(address)
  end

  def add_phone(phone)
    phone = Phone.new(phone)
  end

  def add_email(email)
    email = Email.new(email)
  end

  def info_out
    puts "Name: " + @name
    Address.all.each_with_index do |key, index|
      puts "Address " +(index+1).to_s+ ": "+ key
    end
    Email.all.each_with_index do |key, index|
      puts "Email " +(index+1).to_s+ ": "+ key
    end
    Phone.all.each_with_index do |key, index|
      puts "Phone " +(index+1).to_s+ ": "+ key
    end
  end

 end
