def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |person, data|
    if person == "Freddy Mercury" && data.has_key?(:favorite_icecream_flavors) && data[:favorite_icecream_flavors].include?("strawberry")
      data[:favorite_icecream_flavors].delete("strawberry")
    end
  end


  #remember to return your newly altered contacts hash!
  contacts
end
