class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 35
    end

    def children
        # create children array here
        children = ["liam", "chris", "martha", "james"]

    end

    def address

        # create address hash here
        address = {
            house_number: 4,
            street: "Privet Drive",
            town: "Little Whinging",
            county: "Surrey",
            postcode: "GU15",
            email_addresses: ["vernon@outlook.com", "dudley@hotmail.co.uk"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end
end