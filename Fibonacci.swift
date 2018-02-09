//
//  main.swift
//  FibonacciEnSwift
//
//  Created by Guillermo on 9/2/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//

import Foundation

//  Declaracion de las funciones
func fibonacci(_ numero:Int) -> Int {
    if numero == 0 || numero == 1 {
        return numero
    } else {
        return fibonacci(numero - 2) + fibonacci(numero - 1)
    }
}

//  Variables y constantes
var numeroUsuario:Int = 0
var numeroUsuarioString:String?
var numeroFibonacci:Int = 0

//  Desarrollo del programa
print("Introduce un numero: ")
numeroUsuarioString = readLine()

guard let numeroRecogido = numeroUsuarioString else {
    print ("Valor introducido Nil")
    exit (-1)
}

if numeroRecogido.isEmpty {
    print ("No se ha introducido nada")
    exit (-1)
}

guard let numeroEntero = Int(numeroRecogido) else {
    print ("ERROR: No se ha introducio un numero")
    exit (-1)
}

numeroUsuario = numeroEntero

for sucessionFibonnaci in 0...numeroUsuario {
    numeroFibonacci = fibonacci(sucessionFibonnaci)
    print(NumeroFibonacci)
}

