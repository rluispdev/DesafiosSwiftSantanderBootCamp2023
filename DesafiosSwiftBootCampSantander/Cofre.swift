//
//  Cofre.swift
//  DesafiosSwiftBootCampSantander
//
//  Created by Rafael Gonzaga on 2/3/25.
//

import Foundation

 

class Cofre {
    var tipo: String
    var metodoAbertura: String

    init(tipo: String, metodoAbertura: String) {
        self.tipo = tipo
        self.metodoAbertura = metodoAbertura
    }

    func imprimirInformacoes() {
        print("Tipo:", tipo)
        print("Metodo de abertura:", metodoAbertura)
    }
}

class CofreDigital: Cofre {
    var senha: Int

    init(senha: Int) {
        self.senha = senha
        super.init(tipo: "Cofre Digital", metodoAbertura: "Senha")
    }

    func validarSenha(confirmacaoSenha: Int) -> Bool {
        return confirmacaoSenha == senha
    }
}

class CofreFisico: Cofre {
    override init(tipo: String, metodoAbertura: String) {
        super.init(tipo: "Cofre Fisico", metodoAbertura: "Chave")
    }
}

func main() {
    print("""
          Digite o tipo de cofre:
          1 - 🔐 digital 
          2 - 🔑 fisico
          
          """)
    if let tipoCofre = readLine() {
        if tipoCofre.lowercased() == "1" {
            // Solicita a senha
            print("Digite a senha:")
            if let senhaStr = readLine(), let senha = Int(senhaStr) {
                
                // Solicita a confirmação da senha
                print("Digite a senha novamente para confirmar:")
                if let confirmacaoSenhaStr = readLine(), let confirmacaoSenha = Int(confirmacaoSenhaStr) {
                    let cofre = CofreDigital(senha: senha)
                    cofre.imprimirInformacoes()

                    // Verifica se as senhas coincidem
                    if cofre.validarSenha(confirmacaoSenha: confirmacaoSenha) {
                        print("Cofre aberto!")
                    } else {
                        print("Senha incorreta!")
                    }
                }
            }
        } else if tipoCofre.lowercased() == "2" {
            let cofre = CofreFisico(tipo: "Cofre Fisico", metodoAbertura: "Chave")
            cofre.imprimirInformacoes()
            print("Cofre seguro!")
        }
    }
}

 
