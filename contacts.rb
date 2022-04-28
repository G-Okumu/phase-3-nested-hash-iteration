require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  # your code here!
  contacts.each do |contact, contact_details|
    if contact == "Freddy Mercury"
      contact_details.each do |more_data, data|
        if more_data == :favorite_ice_cream_flavors
          data.delete_if {|flavor| flavor == "strawberry"}
        end
      end
   end
  end
end

binding.pry

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
