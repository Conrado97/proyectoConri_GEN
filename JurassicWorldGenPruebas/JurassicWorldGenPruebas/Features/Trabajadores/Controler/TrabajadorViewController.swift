//
//  TrabajadorViewController.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 7/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class TrabajadorViewController: UIViewController {
    
    @IBOutlet weak var TrabajadorTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(tableView: TrabajadorTableView)
        TrabajadorTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableViewCell = sender as? UITableViewCell,
            let indexPath = TrabajadorTableView.indexPath(for: tableViewCell) else {
                return
        }
        let trabajadorSelected = defaultTrabajadores[indexPath.row]
        if let destinationViewController = segue.destination as? TrabajadorDetailViewController{
            destinationViewController.set(trabajadorData: trabajadorSelected)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        TrabajadorTableView.reloadData()
    }
    
}

extension TrabajadorViewController: UITableViewDelegate, UITableViewDataSource{
    
    private func configure(tableView: UITableView){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTrabajadores.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TrabajadorViewCell.eRowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TrabajadorViewCell.eIdentifier,
                                                 for: indexPath)
        
        (cell as? TrabajadorViewCell)?.update(data: defaultTrabajadores[indexPath.row])
        
        return cell
    }
    
    
}

