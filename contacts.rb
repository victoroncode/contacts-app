@infos = [
  {name:"Joanne", phonenumber:"11999554466"},
  {name:"Jack", phonenumber:"11981545666"},
  {name:"Julia", phonenumber:"1199113577"},
  { name: "John", phonenumber: "1199445566" },
  { name: "Emma", phonenumber: "1198822331" },
  { name: "Michael", phonenumber: "1197788990" },
  { name: "Sophia", phonenumber: "1196677889" },
  { name: "Daniel", phonenumber: "1195566778" },
  { name: "Olivia", phonenumber: "1194455667" },
  { name: "James", phonenumber: "1193344556" },
  { name: "Isabela", phonenumber: "1192233445" },
  { name: "William", phonenumber: "1191122334" },
  { name: "Ava", phonenumber: "1190011223" },
  { name: "Alexander", phonenumber: "119998877" },
  { name: "Mia", phonenumber: "119887766" },
  { name: "Benjamin", phonenumber: "119776655" },
  { name: "Lucas", phonenumber: "119332211" }
]

def all_contacts
  contacts = @infos.each do |contact|
    puts "#{contact[:name]}: #{contact[:phonenumber]}"
    puts "---------------------"
  end
end


def add_contact
  print "Type the name: "
  name = gets.chomp.to_s

  print "Type the number:"
  phonenumber = gets.chomp.to_s

  @infos << {name: name, phonenumber: phonenumber}

  puts "#{name} added to your contacts list successfuly!"
end


def show_contact
  puts "Please enter the name of the contact you wish to search for: "
  name = gets.chomp.to_s

  found = false

  @infos.each do |contact|

    if contact[:name].downcase.include?(name.downcase)
      puts "#{contact[:name]} - #{contact[:phonenumber]}"
      found = true
    end
  end
  puts "Contact not found!" unless found
end


def edit_contact
  puts "Please, type the nome of the contact you want to edit: "
  name = gets.chomp.to_s

  found = false
  @infos.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      found = true

      print "Please, type the new phone number: "
      phonenumber = gets.chomp.to_s
      contact[:phonenumber] = phonenumber
      puts "Contact updated successfuly! "

    end
  end
  puts "Contact not found!" unless found
end


def remove_contact
  puts "Please, type the nome of the contact you want to remove: "
  name = gets.chomp.to_s

  found = false
  @infos.each do |contact|

    if contact[:name].downcase.include?(name.downcase)
      found = true
      index = @infos.index(contact)
      @infos.delete_at(index)
      puts "Contact deleted successfuly! "

    end
  end
  puts "Contact not found!" unless found

end


loop do
puts "\n1. Contacts\n2. Add new contact\n3. Search contact\n4. Edit contact\n5. Remove contact\n0. Exit\n "

  option = gets.chomp.to_i

  case
  when option == 0
    puts "Bye! See you soon!"
    break
  when option == 1
    all_contacts()
  when option == 2
    add_contact()
  when option == 3
    show_contact()
  when option == 4
    edit_contact()
  when option == 5
    remove_contact()
  end

end
