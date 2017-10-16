require "html2latex/version"

module Html2latex
  	def Html2latex.traduzir(text)
		Html2latex.translate(text)
	end

	def Html2latex.translate (text)
		tags = {
		'<p>' => '',
		'<b>' => '\textbf{' ,  				#Negrito
		'<i>' => '\textit{' ,		        		#Itálico
		'<u>' => '\underline{' ,	        		#Sublinhado
		'<strong>' => '\textbf{' ,          		#Negritostrong
		'<ul>' => '\begin{itemize}',        		#Listanaonum
		'</ul>' => '\end{itemize}',	        		#Listanaonum
		'<ol>' => '\begin{enumerate}',      		#Listanaonum
		'</ol>' => '\end{enumerate}',	    		#Listanaonum
		'<li>' => '\item{',			        		#itemlista
		'<h1>' => '\section{',              		#h1 - título
		'</h1>' => '}',                     		#fechar h1
		'<h2>' => '\subsection{',           		#h2 - subtítulo
		'</h2>' => '}',                      		#fechar h2
		'<h3>' => '\subsubsection{',           		#h3 - subsubtítulo
		'</h3>' => '}',                      		#fechar h3
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
		'<sup>' => '\textsuperscript{',
		'<sub>' => '\textsubscript{'

		}

		tags.each { |key, value| text.gsub! key, value }

		#Fechamento TAGs
		text.gsub! /<\/[a-zA-Z>]+/, '}'
	end
end
