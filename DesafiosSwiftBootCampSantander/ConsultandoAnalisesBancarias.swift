//
//  ConsultandoAnalisesBancarias.swift
//  DesafiosSwiftBootCampSantander
//
//  Created by Rafael Gonzaga on 2/4/25.
//

import Foundation

func main2() {
    let interfaceAcionistas = InterfaceAcionistas()
    let scanner = Scanner()

    print("Digite a data inicial (dd/MM/yyyy):")
    let dataInicial = scanner.nextLine()
    
    print("Digite a data final (dd/MM/yyyy):")
    let dataFinal = scanner.nextLine()

    let analises = interfaceAcionistas.obterAnalisesDesempenho(dataInicial: dataInicial, dataFinal: dataFinal)

    // Imprimindo a saída esperada
    if analises.isEmpty {
        print("Nenhuma análise encontrada no período especificado.")
    } else {
        for analise in analises {
            print(analise)
        }
    }
}

class InterfaceAcionistas {
    func obterAnalisesDesempenho(dataInicial: String, dataFinal: String) -> [String] {
        var analisesFiltradas = [String]()

        // Converter strings de data para o formato Date
        guard let dataInicio = parseDate(dateString: dataInicial),
              let dataFim = parseDate(dateString: dataFinal) else {
            print("Erro ao converter datas. Verifique o formato (dd/MM/yyyy).")
            return []
        }

        let analisesOriginais = [
            Analise(data: "01/01/2023", analise: "Analise de Desempenho Financeiro"),
            Analise(data: "15/02/2023", analise: "Analise de Riscos e Exposicoes"),
            Analise(data: "31/03/2023", analise: "Analises Corporativas"),
            Analise(data: "01/04/2023", analise: "Analise de Politicas e Regulamentacoes"),
            Analise(data: "15/05/2023", analise: "Analise de Ativos"),
            Analise(data: "30/06/2023", analise: "Analise de Inovacao e Tecnologia")
        ]

        // Filtrando as análises dentro do período especificado
        for analise in analisesOriginais {
            if let dataAnalise = parseDate(dateString: analise.data),
               dataAnalise >= dataInicio && dataAnalise <= dataFim {
                analisesFiltradas.append(analise.analise)
            }
        }

        return analisesFiltradas
    }

    private func parseDate(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFormatter.locale = Locale(identifier: "pt_BR")
        return dateFormatter.date(from: dateString)
    }
}

class Analise {
    let data: String
    let analise: String

    init(data: String, analise: String) {
        self.data = data
        self.analise = analise
    }
}

class Scanner {
    func nextLine() -> String {
        return readLine() ?? ""
    }
}
 
