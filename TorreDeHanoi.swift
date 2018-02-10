//
//  main.swift
//  TorresDeHanoi
//
//  Created by Guillermo on 10/2/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//

import Foundation

//  Funciones
func hanoi (_ numeroUsuario:Int) -> Int {
    if numeroUsuario == 1 {
        return 1
    } else {
        return 2 * hanoi(numeroUsuario - 1) + 1
    }
}

//  Variables y constantes
var disco:Int
var discoUsuario:String?

//  Desarrollo del programa
print("Numero de discos: ")
discoUsuario = readLine()

guard let discoIntroducido = discoUsuario else {
    print("Valor introducido nil")
    exit (-1)
}

if discoIntroducido.isEmpty {
    print("No se ha introducido ningun valor")
    exit (-1)
}

guard let discoEntero = Int(discoIntroducido) else {
    print("El dato introducido no es un entero")
    exit (-1)
}

disco = discoEntero

print("Los movimientos necesarios son: \(hanoi(disco))")
