//
//  SampleData.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import Foundation

var defaultGenomas: [Genoma] = [
    Genoma(especie: "Tyrannosaurus",
             tipo: "Gran Carnivoro",
             datos_especie: "Gran carnivoro del periodo cretacico tardio, de habitos solitarios, solo admitira miembros de otras especies en el cercado , a excepcion de otros grandes carnivoros. Se recomiendan grandes requisitos de seguridad."),
    Genoma(especie: "Ankilosaurus",
           tipo: "Herbivoro acorazado",
           datos_especie: "Herbivoro de tamaño mediano. con gruesas placas oseas a modo de defensa y una gran maza osea al final de la cola. De habitos mas bien solitarios prefieren grupos reducidos de su misma especie y de otras especies"),
    Genoma(especie: "Velociraptor",
           tipo: "Pequeño carnivoro",
           datos_especie: "Carnivoro de gran inteligencia y habilidad con grandes capacidades sociales, suelen vivir en grupos de tamaño mediano y pueden llegar a cazar presas en manada mucho mas grandes que ellos. Se recomiendan extremar los requisitos de seguridad"),
    Genoma(especie: "Spinosaurus",
    tipo: "Gran Carnivoro",
    datos_especie: "Gran carnivoro con morro alargado que sugiere que su dieta se componia en gran parte de pescado, pero su gran tamaño y aparente actitud agresiva sugiere que podria haver cazado o robarles la presa a otros animales. Se recomiendan grandes requisitos de seguridad")
]
var defaultModificaciones: [Modificacion] = [
    Modificacion(nombre: "Sangre Hipereficiente",
                 descripcion: "Acelera la creacion de globulos rojos y la capacidad de llevar mas nutrientes, proviene de un crustraceo del Oceano Pacifico."),
    Modificacion(nombre: "Instintos agresivos",
                 descripcion: "Los genes del crotalo diamantino promueven que la mejor defensa es siempre un buen ataque."),
    Modificacion(nombre: "Dureza de dientes",
                 descripcion: "Los genes de los escarabajos aumentan la solidez de los dientes y garras hechas de queratina.")]

var defaultTrabajadores: [Trabajador] = [
    Trabajador(identidad: "Khajal Dua",
                 ocupacion: "Genetista jefe",
                tipoProyectos: "Proyectos no hibridos",
                descripcion: "Estudio biologia en Oxford, con master y doctorado en genetica y modificacion genetica."
    
    )
    
]

var defaultProyectos: [Proyecto] = [
    Proyecto(nombreProyecto: "Indominus Rex",
        especieBase: "Tyrannosaurus",
               especieComplementaria: "Velociraptor",
                descripcion: "Acelera la creacion de globulos rojos y la capacidad de llevar mas nutrientes"),
    Proyecto(nombreProyecto: "Spinoraptor",
             especieBase: "Spinosaurus",
             especieComplementaria: "Velociraptor",
             descripcion: "Este hibrido diseñado por el Dr.Wu se caracteriza por su gran agresividad, combina el caracter y tenacidad del spinosaurio y la inteligencia y resiliencia del velociraptor")]
