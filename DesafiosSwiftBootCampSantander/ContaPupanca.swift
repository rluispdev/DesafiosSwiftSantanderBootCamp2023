//
//  ContaPupanca.swift
//  DesafiosSwiftBootCampSantander
//
//  Created by Rafael Gonzaga on 2/4/25.
//

import Foundation

class ContaBancaria {
    var nomeTitular: String
    var numeroConta: Int
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func exibirInformacoes() {
        print("Titular: \(nomeTitular)")
        print("Número da conta: \(numeroConta)")
        print("Saldo: R$ \(String(format: "%.1f", saldo))")
    }
}

class ContaPoupanca: ContaBancaria {
    var taxaJuros: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double, taxaJuros: Double) {
        self.taxaJuros = taxaJuros
        super.init(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)
    }

    override func exibirInformacoes() {
        super.exibirInformacoes()
        print("Taxa de juros: \(String(format: "%.1f", taxaJuros))%")
    }
}

func main5() {
    let scanner = Scanner()

    // Solicitar dados ao usuário
    print("Digite o nome do titular:")
    let nomeTitular = scanner.nextLine()

    print("Digite o número da conta:")
    guard let numeroConta = Int(scanner.nextLine()) else {
        print("Número de conta inválido!")
        return
    }

    print("Digite o saldo da conta:")
    guard let saldo = Double(scanner.nextLine()) else {
        print("Saldo inválido!")
        return
    }

    print("Digite a taxa de juros:")
    guard let taxaJuros = Double(scanner.nextLine()) else {
        print("Taxa de juros inválida!")
        return
    }

    // Criando a instância da ContaPoupanca
    let contaPoupanca = ContaPoupanca(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo, taxaJuros: taxaJuros)

    print("\nConta Poupança:")
    contaPoupanca.exibirInformacoes()
}

class Scanner5 {
    func nextLine() -> String {
        return readLine() ?? ""
    }
}

 

 
