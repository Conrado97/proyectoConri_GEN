//
//  GenomaControler.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 23/5/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import UIKit

class GenomaViewController: UIViewController {
    
    @IBOutlet weak var GenTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(tableView: GenTableView)
        GenTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableViewCell = sender as? UITableViewCell,
            let indexPath = GenTableView.indexPath(for: tableViewCell) else {
                return
        }
        let genomaSelected = defaultGenomas[indexPath.row]
        if let destinationViewController = segue.destination as? GenomaDetailViewController{
            destinationViewController.set(genomaData: genomaSelected)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       GenTableView.reloadData()
    }
    
}

extension GenomaViewController: UITableViewDelegate, UITableViewDataSource{
    
    private func configure(tableView: UITableView){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultGenomas.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return GenomaViewCell.eRowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GenomaViewCell.eIdentifier,
                                                 for: indexPath)
        
        (cell as? GenomaViewCell)?.update(data: defaultGenomas[indexPath.row])
        
        return cell
    }
    
    
}

