//
//  TrabajadorDetailViewController.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 7/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit


protocol TrabajadorDetailDelegate {
    
}

class TrabajadorDetailViewController: UIViewController {
    
    @IBOutlet weak var TrabajadorOcupacion: UILabel!
    @IBOutlet weak var TrabajadorTipo: UILabel!
    @IBOutlet weak var TrabajadorIdentidad: UILabel!
    @IBOutlet weak var TrabajadorDescripcion: UITextView!
    
    
    var delegate: TrabajadorDetailDelegate?
    private var trabajadorData: Trabajador? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let trabajador = trabajadorData else {
            return
        }
        update(data: trabajador)
    }
    
    func set(trabajadorData: Trabajador) {
        self.trabajadorData = trabajadorData
    }
    
    
    private func update(data: Trabajador) {
        update(identidad: data.identidad)
        update(ocupacion: data.ocupacion)
        update(tipoProyectos: data.tipoProyectos)
        update(descripcion: data.descripcion)
        
    }
    
    private func update(identidad: String?) {
        TrabajadorIdentidad.text = identidad
    }
    
    private func update(ocupacion: String?) {
        TrabajadorOcupacion.text = ocupacion
    }
    
    private func update(tipoProyectos: String?) {
        TrabajadorTipo.text = tipoProyectos
    }
    
    private func update(descripcion: String?) {
        TrabajadorDescripcion.text = descripcion
    }
    
}
