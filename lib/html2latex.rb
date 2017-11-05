require "html2latex/version"

module Html2latex

  	def Html2latex.traduzir(text)
		Html2latex.translate(text)
	end

	def Html2latex.translate (text)
		
		@@tags.each { |key, value| text.gsub! key, value }

		#Fechamento TAGs
		text.gsub! /<\/[a-zA-Z1-4>]+/, '}'
		
		return text
	end

	def self.tags
		@@tags
	end

	def self.add (hash = {})
		@@tags.merge!(hash)
	end
	def self.delete (key)
		@@tags.delete(key)
	end

	@@tags = {
		'<p>' => '\newline ',
		'</p>' => '',
		'<b>' => '\textbf{' ,  				#Negrito
		'<i>' => '\textit{' ,		        		#Itálico
		'<em>' => '\textit{',				#Itálico2
		'<u>' => '\underline{' ,	        		#Sublinhado
		'<span style="text-decoration: underline;">' => '\underline{', #Sublinhado
		'<strong>' => '\textbf{' ,          		#Negritostrong
		'<ul>' => '\begin{itemize}',        		#Listanaonum
		'</ul>' => '\end{itemize}',	        		#Listanaonum
		'<ol>' => '\begin{enumerate}',      		#Listanaonum
		'</ol>' => '\end{enumerate}',	    		#Listanaonum
		'<li>' => '\item{',			        		#itemlista
		'<h1>' => '\chapter[]{',              		#h1 - capítulo
		'<h2>' => '\section{',              		#h2 - título
		'<h3>' => '\subsection{',           		#h3 - subtítulo
		'<h4>' => '\subsubsection{',           		#h4 - subsubtítulo
		'<img src="' => '\includegraphics{',		#abrir imagem
		'" />' => '}',                        		#fechar imagem   
		# Acentos
		'&Aacute;' => 'Á',
		'&aacute;' => 'á',
		'&Agrave;' => 'À',
		'&agrave;' => 'à',
		'&Acirc;' => 'Â',
		'&acirc;' => 'â',

		'&Eacute;' => 'É',
		'&eacute;' => 'é',
		'&Egrave;' => 'È',
		'&egrave;' => 'è',
		'&Ecirc;' => 'Ê',
		'&ecirc;' => 'ê',

		'&Iacute;' => 'Í',
		'&iacute;' => 'í',
		'&Igrave;' => 'Ì',
		'&igrave;' => 'ì',
		'&Icirc;' => 'Î',
		'&icirc;' => 'î',

		'&Oacute;' => 'Ó',
		'&oacute;' => 'ó',
		'&Ograve;' => 'Ò',
		'&ograve;' => 'ò',
		'&Ocirc;' => 'Ô',
		'&ocirc;' => 'ô',

		'&Uacute;' => 'Ú',
		'&uacute;' => 'ú',
		'&Ugrave;' => 'Ù',
		'&ugrave;' => 'ù',
		'&Ucirc;' => 'Û',
		'&ucirc;' => 'û',

		'&Ccedil;' => 'Ç',
		'&ccedil;' => 'ç',

		'&Atilde;' => 'Ã',
		'&atilde;' => 'ã', 
		'&Otilde;' => 'Õ',
		'&otilde;' => 'õ',
		'&Ntilde;' => 'Ñ',
		'&ntilde;' => 'ñ',
		
		#Caracteres especiais
		'&lt;' => '<',
		'&gt;' => '>',
		'&ordm;' => 'º',
		'&ordf;' => 'ª',
		'&amp;' => '&',
		'&nbsp;' => ' ',
		'<sup>' => '\textsuperscript{',
		'<sub>' => '\textsubscript{'

		}
end
