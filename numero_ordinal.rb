class String

  def numero_ordinal(feminino = false)
    unidades = ["", "primeiro ", "segundo ", "terceiro ", "quarto ", "quinto ", "sexto ", "sétimo ", "oitavo ", "nono "]
    dezenas = ["", "décimo ", "vigésimo ", "trigésimo ", "quadragésimo ", "quinquagésimo ", "sexagésimo ", "septagésimo ", "octagésimo ", "nonagésimo "]
    centenas = ["", "centésimo ", "ducentésimo ", "tricentésimo ", "quadrigentésimo ", "quingentésimo ", "seiscentésimo ", "septingntésimo ", "octigentésimo ", "nongentésimo "]

    ordinal = [nil, unidades, dezenas, centenas]
    texto = ""
    numero = self.to_s
    tamanho_numero = posicao_atual = numero.length

      while posicao_atual >= 1

        if posicao_atual >= 4
          posicao_atual = 4
          texto += "#{numero[0..(tamanho_numero - 4)].to_i.to_extenso } milésimo "
        else
          texto += ordinal[posicao_atual][numero[(tamanho_numero - posicao_atual)..(tamanho_numero - posicao_atual)].to_i]
        end

        texto = modifica_genero(texto) if feminino
        posicao_atual -= 1
      end

    return texto = texto[0..texto.length-2]

  end


  def modifica_genero(texto)
    return texto[0..texto.length - 3] + "a "
  end
  
end