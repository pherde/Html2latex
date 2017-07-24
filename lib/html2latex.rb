require "html2latex/version"

module Html2latex
  	def Html2latex.traduzir(a)
		tags = {'<b>' => '\textbf{' ,  				#Negrito
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
		'<img src="' => '\includegraphics{',		#abrir imagem
		'" />' => '}'                        		#fechar imagem   

		}

		tags.each { |key, value| a.gsub! key, value }

		#Fechamento TAGs
		a.gsub! /<\/[a-zA-Z>]+/, '}'
	end
end
