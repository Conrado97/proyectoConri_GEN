//
//  ModificacionesDetailsViewController.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 7/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit


protocol ModDetailDelegate {
    
}

class ModificacionesDetailsViewController: UIViewController {
    
    @IBOutlet weak var ModificacionNombre: UILabel!
    @IBOutlet weak var ModificacionDetalles: UITextView!
    
    
    var delegate: ModDetailDelegate?
    private var modData: Modificacion? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let modificacion = modData else {
            return
        }
        update(data: modificacion)
    }
    
    func set(modData: Modificacion) {
        self.modData = modData
    }
    
    
    private func update(data: Modificacion) {
        update(nombre: data.nombre)
        update(descripcion: data.descripcion)
        
    }
    
    private func update(nombre: String?) {
        ModificacionNombre.text = nombre
    }
    
    private func update(descripcion: String?) {
        ModificacionDetalles.text = descripcion
    }
    
}
