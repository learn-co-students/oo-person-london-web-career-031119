# your code goes here


class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        if new_happiness >= 0 && 10 >= new_happiness
            @happiness = new_happiness
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = 10
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene >= 0 && 10 >= new_hygiene
            @hygiene = new_hygiene
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = 10
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end


    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end


end