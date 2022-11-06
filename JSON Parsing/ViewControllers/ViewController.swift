//
//  ViewController.swift
//  JSON Parsing
//
//  Created by Vyacheslav on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let link = "https://www.boredapi.com/api/activity/"
    
    @IBAction func buttonPressed() {
            guard let url = URL(string: link) else { return }
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else {
                    print(error?.localizedDescription ?? "No error description")
                    return
                }
                
                let decoder = JSONDecoder()
                
                do {
                    let request = try decoder.decode(Headers.self, from: data)
                    print(request)
                } catch let error {
                    print(error.localizedDescription)
                }
                
            }.resume()
    }
    
    
}

