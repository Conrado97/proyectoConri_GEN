//
//  ProyectoViewController.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//




import UIKit

class ProyectoViewController: UIViewController {
    
    @IBOutlet weak var ProyectoTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(tableView: ProyectoTableView)
        ProyectoTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableViewCell = sender as? UITableViewCell,
            let indexPath = ProyectoTableView.indexPath(for: tableViewCell) else {
                return
        }
        let proyectoSelected = defaultProyectos[indexPath.row]
        if let destinationViewController = segue.destination as? ProyectoDetailViewController{
            destinationViewController.delegate = self
            destinationViewController.set(proyectoData: proyectoSelected)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ProyectoTableView.reloadData()
    }
    
}

extension ProyectoViewController: UITableViewDelegate, UITableViewDataSource{
    
    private func configure(tableView: UITableView){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultProyectos.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ProyectoViewCell.eRowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProyectoViewCell.eIdentifier,
                                                 for: indexPath)
        
        (cell as? ProyectoViewCell)?.update(data: defaultProyectos[indexPath.row])
        
        return cell
    }
    
    
}


