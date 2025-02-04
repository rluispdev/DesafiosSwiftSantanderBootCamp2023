//
//  AbrirContas.swift
//  DesafiosSwiftBootCampSantander
//
//  Created by Rafael Gonzaga on 2/4/25.
//

import Foundation

class Bancaria {
    var numeroConta: Int
    var nomeTitular: String
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func getNumeroConta() -> Int {
        return self.numeroConta
    }

    func getNomeTitular() -> String {
        return self.nomeTitular
    }

    func getSaldo() -> Double {
        return self.saldo
    }
}

func main4() {
    let scanner = Scanner()

    // Solicitar ao usuário os dados de entrada
    print("Digite o número da conta:")
    guard let numeroConta = Int(scanner.nextLine()) else {
        print("Número de conta inválido!")
        return
    }

    print("Digite o nome do titular:")
    let nomeTitular = scanner.nextLine()

    print("Digite o saldo da conta:")
    guard let saldo = Double(scanner.nextLine()) else {
        print("Saldo inválido!")
        return
    }

    // Criando a instância do cliente bancário
    let cliente1 = Bancaria(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)

    // Exibindo as informações do cliente
    print("Informações:")
    print("Conta: \(cliente1.getNumeroConta())")
    print("Titular: \(cliente1.getNomeTitular())")
    print("Saldo: R$ \(String(format: "%.2f", cliente1.getSaldo()))")
}

class Scanner3 {
    func nextLine() -> String {
        return readLine() ?? ""
    }
}

 
