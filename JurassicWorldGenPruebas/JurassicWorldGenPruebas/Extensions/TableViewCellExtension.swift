//
//  TableViewCellExtension.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

extension UITableViewCell{
    
    func configure(cornerRadius: CGFloat = 8.0,
                   shadowOpacity: Float = 0.6,
                   color: CGColor = UIColor.gray.cgColor,
                   view: UIView?) {
        view?.layer.cornerRadius = cornerRadius
        view?.layer.shadowColor = color
        view?.layer.shadowOffset = CGSize.zero
        view?.layer.shadowRadius = cornerRadius
        view?.layer.shadowOpacity = shadowOpacity
    }
    
}
