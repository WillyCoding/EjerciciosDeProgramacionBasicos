//
//  main.swift
//  FibonacciEnSwift
//
//  Created by Guillermo on 9/2/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//

import Foundation

//  Declaracion de las funciones
func Fibonacci(_ Numero:Int) -> Int {
    if Numero == 0 || Numero == 1 {
        return Numero
    } else {
        return Fibonacci(Numero - 2) + Fibonacci(Numero - 1)
    }
}

//  Variables y constantes
var NumeroUsuario:Int = 0
var NumeroUsuarioString:String?
var NumeroFibonacci:Int = 0

//  Desarrollo del programa
print("Introduce un numero: ")
NumeroUsuarioString = readLine()

guard let NumeroRecogido = NumeroUsuarioString else {
    print ("Valor introducido Nil")
    exit (-1)
}

if NumeroRecogido.isEmpty {
    print ("No se ha introducido nada")
    exit (-1)
}

guard let NumeroEntero = Int(NumeroRecogido) else {
    print ("ERROR: No se ha introducio un numero")
    exit (-1)
}

NumeroUsuario = NumeroEntero

for SucessionFibonnaci in 0...NumeroUsuario {
    NumeroFibonacci = Fibonacci(SucessionFibonnaci)
    print(NumeroFibonacci)
}

