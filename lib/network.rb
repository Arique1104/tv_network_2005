class Network
attr_reader :name,
            :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters

    characters = @shows.flat_map do |show|
      show.characters
    end

    characters.find_all do |character|
      character.salary > 500_000 && (character.name == character.name.upcase)
    end

    # @shows.collect_concat do |show|
    #     show.character.salary > 500_000 && show.charcter.name == show.character.name.upcase
    #   end


     # @shows.map do |show|
     #   show.characters.find_all do |character|
     #     character.salary > 500_000 && character.name == character.name.upcase
     #    end
     #  end.flatten
    end

end
