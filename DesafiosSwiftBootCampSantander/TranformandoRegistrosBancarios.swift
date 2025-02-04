//
//  TranformandoRegistrosBancarios.swift
//  DesafiosSwiftBootCampSantander
//
//  Created by Rafael Gonzaga on 2/4/25.
//

import Foundation

func main3() {
    let scanner = Scanner()

    print("Digite a data (dd/MM/yyyy):")
    let data = scanner.nextLine()

    print("Digite a hora (HH:mm):")
    let hora = scanner.nextLine()

    print("Digite a descrição da transação:")
    let descricao = scanner.nextLine()

    print("Digite o valor da transação:")
    let valorString = scanner.nextLine()
    
    if let valor = Double(valorString) {
        let transacao = Transacao(data: data, hora: hora, descricao: descricao, valor: valor)
        transacao.imprimir()
    } else {
        print("Valor inválido. Por favor, insira um número válido para o valor.")
    }
}

class Transacao {
    let data: String
    let hora: String
    let descricao: String
    let valor: Double

    init(data: String, hora: String, descricao: String, valor: Double) {
        self.data = data
        self.hora = hora
        self.descricao = descricao
        self.valor = valor
    }

    func imprimir() {
        print(descricao)
        print(data)
        print(hora)
        print(String(format: "%.2f", valor))
    }
}

class Scanner2 {
    func nextLine() -> String {
        return readLine() ?? ""
    }
}

 
