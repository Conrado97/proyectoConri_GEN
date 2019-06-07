//
//  GenomaDetailViewControler.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit


protocol GenomaDetailDelegate {
    
}

class GenomaDetailViewController: UIViewController {
    
    @IBOutlet weak var GenomaEspecie: UILabel!
    @IBOutlet weak var GenomaTipo: UILabel!
    @IBOutlet weak var GenomaDatos_Especie: UITextView!
    
    
    
    
    var delegate: GenomaDetailDelegate?
    private var genomaData: Genoma? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let genoma = genomaData else {
            return
        }
        update(data: genoma)
    }
    
    func set(genomaData: Genoma) {
        self.genomaData = genomaData
    }
    
    
    private func update(data: Genoma) {
        update(especie: data.especie)
        update(tipo: data.tipo)
        update(datos_especie: data.datos_especie)

    }
    
    private func update(especie: String?) {
        GenomaEspecie.text = especie
    }
    
    private func update(tipo: String?) {
        GenomaTipo.text = tipo
    }
    
    private func update(datos_especie: String?) {
        GenomaDatos_Especie.text = datos_especie
    }

    
}
