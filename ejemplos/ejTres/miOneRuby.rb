# puts "Hello World"
# print "Saludos a todos"

# class MegaAnfitrion
#     attr_accessor :nombres
  
#     # Crear el objeto
#     def initialize(nombres = "Mundo")
#       @nombres = nombres
#     end
  
#     # Decirle hola a todos
#     def decir_hola
#       if @nombres.nil?
#         puts "..."
#       elsif @nombres.respond_to?("each")
#         # @nombres es una lista de algún tipo,
#         # ¡así que podemos iterar!
#         @nombres.each do |nombre|
#           puts "Hola #{nombre}"
#         end
#       else
#         puts "Hola #{@nombres}"
#       end
#     end
  
#     # Decirle adiós a todos
#     def decir_adios
#       if @nombres.nil?
#         puts "..."
#       elsif @nombres.respond_to?("join")
#         # Juntar los elementos de la lista
#         # usando la coma como separador
#         puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
#       else
#         puts "Adiós #{@nombres}. Vuelve pronto."
#       end
#     end
  
#   end
  
  
#   if __FILE__ == $0
#     ma = MegaAnfitrion.new
#     ma.decir_hola
#     ma.decir_adios
  
#     # Cambiar el nombre a "Diego"
#     ma.nombres = "Diego"
#     ma.decir_hola
#     ma.decir_adios
  
#     # Cambiar el nombre a un vector de nombres
#     ma.nombres = ["Alberto", "Beatriz", "Carlos",
#       "David", "Ernesto"]
#     ma.decir_hola
#     ma.decir_adios
  
#     # Cambiarlo a nil
#     ma.nombres = nil
#     ma.decir_hola
#     ma.decir_adios
#   end

#------------------------------------------------------------------

# class Die

#     def roll
#       1 + rand(6)
#     end
  
#   end
  
#   # Let's make a couple of dice...
#   dice = [Die.new, Die.new]
  
#   # ...and roll them.
#   dice.each do |die|
#     puts die.roll
#   end

#----------------------------------------------------------

class Dragon

    def initialize name
      @name = name
      @asleep = false
      @stuffInBelly     = 10  # He's full.
      @stuffInIntestine =  0  # He doesn't need to go.
  
      puts @name + ' is born.'
    end
  
    def feed
      puts 'You feed ' + @name + '.'
      @stuffInBelly = 10
      passageOfTime
    end
  
    def walk
      puts 'You walk ' + @name + '.'
      @stuffInIntestine = 0
      passageOfTime
    end
  
    def putToBed
      puts 'You put ' + @name + ' to bed.'
      @asleep = true
      3.times do
        if @asleep
          passageOfTime
        end
        if @asleep
          puts @name + ' snores, filling the room with smoke.'
        end
      end
      if @asleep
        @asleep = false
        puts @name + ' wakes up slowly.'
      end
    end
  
    def toss
      puts 'You toss ' + @name + ' up into the air.'
      puts 'He giggles, which singes your eyebrows.'
      passageOfTime
    end
  
    def rock
      puts 'You rock ' + @name + ' gently.'
      @asleep = true
      puts 'He briefly dozes off...'
      passageOfTime
      if @asleep
        @asleep = false
        puts '...but wakes when you stop.'
      end
    end
  
    private
  
    # "private" means that the methods defined here are
    # methods internal to the object.  (You can feed
    # your dragon, but you can't ask him if he's hungry.)
  
    def hungry?
      # Method names can end with "?".
      # Usually, we only do this if the method
      # returns true or false, like this:
      @stuffInBelly <= 2
    end
  
    def poopy?
      @stuffInIntestine >= 8
    end
  
    def passageOfTime
      if @stuffInBelly > 0
        # Move food from belly to intestine.
        @stuffInBelly     = @stuffInBelly     - 1
        @stuffInIntestine = @stuffInIntestine + 1
      else  # Our dragon is starving!
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' is starving!  In desperation, he ate YOU!'
        exit  # This quits the program.
      end
  
      if @stuffInIntestine >= 10
        @stuffInIntestine = 0
        puts 'Whoops!  ' + @name + ' had an accident...'
      end
  
      if hungry?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + '\'s stomach grumbles...'
      end
  
      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' does the potty dance...'
      end
    end
  
  end

  pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed