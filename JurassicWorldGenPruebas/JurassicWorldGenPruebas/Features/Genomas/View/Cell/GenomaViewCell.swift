//
//  GenomaViewCell.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 28/5/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class GenomaViewCell: UITableViewCell{
    
    static let eIdentifier = String(describing: GenomaViewCell.self)
    
    static let eRowHeight: CGFloat = 210.0
    
    @IBOutlet weak var GenView: UIView!
    @IBOutlet weak var Especie: UILabel!
    @IBOutlet weak var Tipo: UILabel!
    @IBOutlet weak var adnAlargado: UIImageView!
    
    
    override func prepareForReuse() {
        Especie.text = nil
        Tipo.text = nil
        adnAlargado.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func update(data: Genoma?){
        update(especie: data?.especie)
        update(tipo: data?.tipo)
        update()
 
    }
    
    private func update(especie: String?){
        Especie.text = especie
    }
    private func update(tipo: String?){
        Tipo.text = tipo
    }
    private func update(){
        adnAlargado.image = UIImage(named: "adnAlargado")
    }
}
