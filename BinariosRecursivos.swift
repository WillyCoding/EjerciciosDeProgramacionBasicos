//
//  main.swift
//  Recursividad_Binarios
//
//  Created by Guillermo on 19/1/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//
//  Decimal a binario de forma recursiva
//  Implemente una funcion recursiva que reciba un numero entero y devuelva como resultado
//  un entero con la representacion en binario del número (usando sólo 1 y 0 obviamente)
//  Recuerde que para realizar de decimal a binario debe realizar diviones sucesivas entre
//  2 del número inicial y los cocientes, tomando los restos en orden inverso para
//  construir el número binario.

import Foundation

//  Declaracion de las funciones
func binarios(_ numero:Int) -> Int {
    if numero < 2 {
        return numero
    } else {
        return (numero%2) + (10*binarios(numero/2))
    }
}


//  Declaracion de constantes y variables
var NumeroUsuario:Int
var Recoger:String?
var NumeroBinario:Int

print("Introduce un numero: ")
Recoger = readLine()

guard let NumeroRecogido = Recoger else{
    print("Valor recogido nil")
    exit(-1)
}

if NumeroRecogido.isEmpty {
    print("No has introducido ningun numero")
    exit(-1)
}
guard let NumeroFinal = Int(NumeroRecogido) else{
    print("ERROR: No se ha escrito numero")
    exit(-1)
}

NumeroUsuario = NumeroFinal
NumeroBinario = binarios(NumeroUsuario)
print("El numero en binario es: \(NumeroBinario)")




