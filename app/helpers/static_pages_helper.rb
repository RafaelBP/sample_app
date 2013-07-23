require 'open-uri'
require 'rexml/document'

module StaticPagesHelper
	include REXML

	def returnhi()
		return "Hi"
	end

	def papel(cod)
		# papeis = "CSNA3 BBDC4 ITUB4 ITSA4 PETR4 VALE5 USIM5 AMBV4 GFSA3 CESP6".split

		cotacao = {}
		remote_base_url = "http://www.bmfbovespa.com.br/Pregao-Online/ExecutaAcaoAjax.asp?CodigoPapel="+cod
		remote_data = open(remote_base_url).read
		xmldoc = Document.new(remote_data)

# This will output all the movie titles.
		xmldoc.elements.each("ComportamentoPapeis/Papel") do |e| 
			cotacao[e.attributes["Codigo"].to_sym] = e.attributes["Medio"].to_f
		end
		return cotacao
	end


end
