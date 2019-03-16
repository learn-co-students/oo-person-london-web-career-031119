# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    ## INITIATION 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        if happiness > 10 
          @happiness = 10 
        elsif happiness < 0
          @happiness = 0
        else 
          @happiness = happiness  
        end 
    end
      
    def hygiene=(hygiene)
        if hygiene > 10 
          @hygiene = 10 
        elsif hygiene < 0
          @hygiene = 0
        else 
          @hygiene = hygiene  
        end 
    end 
    ## NON - ATT - INSTANCE METHODS!!!!
    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath # calling the person itself below
       self.hygiene += 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
       self.hygiene -= 3
       self.happiness += 2 
       return "♪ another one bites the dust ♫"
    end

    def call_friend(friend) #friend and the person in 1 method
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

    def start_conversation(mate, topic) #as above
        if topic == "politics"
            self.happiness = @happiness - 2
            mate.happiness = mate.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            mate.happiness = mate.happiness + 1
            return "blah blah sun blah rain"
        else topic == "other"
            return "blah blah blah blah blah"
        end    
    end
end

