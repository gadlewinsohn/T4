module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      command 'ves GOT?' do |client, data, match|
        link = 'https://got-quotes.herokuapp.com/quotes'
        party = HTTParty.get(link)
        json = JSON.parse(party.body)
        frase = json['quote']
        personaje = json['character']
        imprimir = personaje + ": '" + frase + "'"
        #imprimir = party
      	client.say(channel: data.channel, text: imprimir)
      end
    end
  end
end
