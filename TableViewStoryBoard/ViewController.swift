//
//  ViewController.swift
//  TableViewStoryBoard
//
//  Created by Italo on 09/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var dados: [String] = ["Italo", "Luisa", "Valeria"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaTeste = "celulaTeste"
        let cell = tableView.dequeueReusableCell(withIdentifier: celulaTeste, for: indexPath)
        cell.textLabel?.text = dados[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alert = UIAlertController(title: "Item Selecionado", message: dados[indexPath.row], preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
        
    }

}



