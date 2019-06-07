//
//  ProyectoDetailViewControler.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit


protocol ProyectoDetailDelegate {
    func onDelete(genomaEspecie: String?)
}

class ProyectoDetailViewController: UIViewController {
    
    @IBOutlet weak var ProyectoNombre: UILabel!
    @IBOutlet weak var ProyectoBase: UILabel!
    @IBOutlet weak var ProyectoComplementaria: UILabel!
    @IBOutlet weak var ProyectoDescripcion: UITextView!
    
    
    
    
    var delegate: ProyectoDetailDelegate?
    private var proyectoData: Proyecto? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let proyecto = proyectoData else {
            return
        }
        update(data: proyecto)
    }
    
    func set(proyectoData: Proyecto) {
        self.proyectoData = proyectoData
    }
    
    
    private func update(data: Proyecto) {
        update(nombreProyecto: data.nombreProyecto)
        update(especieBase: data.especieBase)
        update(especieComplementaria: data.especieComplementaria)
        
    }
    
    private func update(nombreProyecto: String?) {
        ProyectoNombre.text = nombreProyecto
    }
    
    private func update(especieBase: String?) {
        ProyectoBase.text = especieBase
    }
    
    private func update(especieComplementaria: String?) {
        ProyectoComplementaria.text = especieComplementaria
    }
    
    private func update(descripcion: String?) {
        ProyectoDescripcion.text = descripcion
    }
    
}
