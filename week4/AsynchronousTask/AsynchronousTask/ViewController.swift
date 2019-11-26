//
//  ViewController.swift
//  AsynchronousTask
//
//  Created by Ninn on 2019/11/25.
//  Copyright © 2019 Ninn. All rights reserved.
//

import UIKit

struct StationDetail: Decodable {
    var stationID: String
    var stationName: String
    var stationAddress: String
}

class ViewController: UIViewController {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    func loadData() {
        let addrress = "https://stations-98a59.firebaseio.com/practice.json"
        if let url = URL(string: addrress) {
            URLSession.shared.dataTask(with: url) {
                (data, response, error) in
                if let error = error {
                    print(error.localizedDescription)
                } else if let response = response as? HTTPURLResponse, let data = data {
                    print("Status code: \(response.statusCode)")
                    let decoder = JSONDecoder()
                    if let stationDetail = try? decoder.decode(StationDetail.self, from: data) {
                        print(stationDetail)
                        DispatchQueue.main.async {
                            self.idLabel.text = stationDetail.stationID
                            self.nameLabel.text = stationDetail.stationName
                            self.addressLabel.text = stationDetail.stationAddress
                        }
                    }
                }
            }.resume()
        } else {
            print("Invalid URL.")
        }
    }
}

