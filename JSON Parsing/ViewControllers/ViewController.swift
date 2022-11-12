//
//  ViewController.swift
//  JSON Parsing
//
//  Created by Vyacheslav on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    
    var headers: Headers!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData(from: Link.link.rawValue)
    }
    
    @IBAction func buttonPressed() {
        infoLabel.text = headers.description
     }
    
    private func fetchData(from url: String) {
        NetworkManager.shared.fetch(from: Link.link.rawValue) { result in
            switch result {
            case .success(let data):
                print(data)
                self.headers = data
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}


