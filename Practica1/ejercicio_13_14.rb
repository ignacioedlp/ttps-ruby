def a_ul(hash, pegamento)
  html = "<ul>"
  hash.each do |k, v|
    html += "<li>" + k.to_s + pegamento + v.to_s + "</li>"
  end
  html += "</ul>"

  puts html
end

a_ul({ perros: 1, gatos: 1, peces: 0}, "-> ")