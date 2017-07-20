require "html2latex/version"

module Html2latex
  	def Html2latex.traduzir(a)
		tags = {'<b>' => '\textbf{' ,  		#Negrito
		'<i>' => '\textit{' ,		#Itálico
		'<u>' => '\underline{' ,	#Sublinhado
		'<strong>' => '\textbf{' ,  #Negritostrong
		'<ul>' => '\begin{itemize}',#Listanaonum
		'</ul>' => '\end{itemize}',	#Listanaonum
		'<ol>' => '\begin{enumerate}',#Listanaonum
		'</ol>' => '\end{enumerate}',	#Listanaonum
		'<li>' => '\item{'			#itemlista
		}

		tags.each { |key, value| a.gsub! key, value }

		#Fechamento TAGs
		a.gsub! /<\/[a-zA-Z>]+/, '}'
	end
end
