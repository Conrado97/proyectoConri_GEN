//
//  ProyectosViewCell.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class ProyectoViewCell: UITableViewCell{
    
    static let eIdentifier = String(describing: ProyectoViewCell.self)
    
    static let eRowHeight: CGFloat = 210.0
    
    @IBOutlet weak var ProyectoView: UIView!
    @IBOutlet weak var NombreProyecto: UILabel!
    @IBOutlet weak var adnmorado: UIImageView!
    
    
    override func prepareForReuse() {
        NombreProyecto.text = nil
        adnmorado.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func update(data: Proyecto?){
        update(nombreProyecto: data?.nombreProyecto)
        update()
    }
    private func update(nombreProyecto: String?){
        NombreProyecto.text = nombreProyecto
    }
    private func update(){
        adnmorado.image = UIImage(named: "adnmorado")
    }
}
