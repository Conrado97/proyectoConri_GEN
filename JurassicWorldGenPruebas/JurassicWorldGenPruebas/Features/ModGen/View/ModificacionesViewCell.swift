//
//  ModificacionesViewCell.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 7/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class ModViewCell: UITableViewCell{
    
    static let eIdentifier = String(describing: ModViewCell.self)
    
    static let eRowHeight: CGFloat = 210.0
    
    @IBOutlet weak var ModView: UIView!
    @IBOutlet weak var Modificacion: UILabel!
    @IBOutlet weak var AdnCorto: UIImageView!
    
    
    
    override func prepareForReuse() {
        Modificacion.text = nil
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func update(data: Modificacion?){
        update(nombre: data?.nombre)
        update()
        
    }
    private func update(nombre: String?){
        Modificacion.text = nombre
    }
    
    private func update(){
        AdnCorto.image = UIImage(named: "AdnCorto")
    }
}
