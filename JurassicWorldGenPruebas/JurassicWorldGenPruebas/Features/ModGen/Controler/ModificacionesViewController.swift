//
//  ModificacionesViewController.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class ModificacionesViewController: UIViewController {
    
    @IBOutlet weak var ModTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(tableView: ModTableView)
        ModTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableViewCell = sender as? UITableViewCell,
            let indexPath = ModTableView.indexPath(for: tableViewCell) else {
                return
        }
        let modificacionSelected = defaultModificaciones[indexPath.row]
        if let destinationViewController = segue.destination as? ModificacionesDetailsViewController{
            destinationViewController.set(modData: modificacionSelected)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ModTableView.reloadData()
    }
    
}

extension ModificacionesViewController: UITableViewDelegate, UITableViewDataSource{
    
    private func configure(tableView: UITableView){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultModificaciones.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ModViewCell.eRowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ModViewCell.eIdentifier,
                                                 for: indexPath)
        
        (cell as? ModViewCell)?.update(data: defaultModificaciones[indexPath.row])
        
        return cell
    }
    
    
}

