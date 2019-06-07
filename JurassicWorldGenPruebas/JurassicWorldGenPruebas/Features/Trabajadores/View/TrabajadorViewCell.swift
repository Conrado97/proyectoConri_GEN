//
//  TrabajadorViewCell.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 7/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class TrabajadorViewCell: UITableViewCell{
    
    static let eIdentifier = String(describing: TrabajadorViewCell.self)
    
    static let eRowHeight: CGFloat = 210.0
    
    @IBOutlet weak var TrabajadorView: UIView!
    @IBOutlet weak var Identidad: UILabel!
    @IBOutlet weak var Ocupacion: UILabel!
    @IBOutlet weak var Tipo: UILabel!
     @IBOutlet weak var TrabajadorImage: UIImageView!
    
    
    
    override func prepareForReuse() {
        Identidad.text = nil
         Ocupacion.text = nil
            Tipo.text = nil
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func update(data: Trabajador?){
        update(identidad: data?.identidad)
        update(ocupacion: data?.ocupacion)
        update(tipoProyectos: data?.tipoProyectos)
        update()

    }
    private func update(identidad: String?){
        Identidad.text = identidad
    }
    private func update(ocupacion: String?){
        Ocupacion.text = ocupacion
    }
    private func update(tipoProyectos: String?){
        Tipo.text = tipoProyectos
    }
    private func update(){
        TrabajadorImage.image = UIImage(named: "Khajal")
    }
}
