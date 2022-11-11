//
//  ViewController.swift
//  JSON Parsing
//
//  Created by Vyacheslav on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet var infoLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed() {
        fetchData(from: Link.link.rawValue)
        infoLabel.text = description
    }
    
    private func fetchData(from url: String) {
        NetworkManager.shared.fetch(from: Link.link.rawValue) { result in
            switch result {
            case .success(let data):
                print(data)
                self.viewDidLoad()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}

