//
//  MainViewController.swift
//  BoredHW2.10
//
//  Created by Mary Jane on 26.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    let urlAddress = "https://www.boredapi.com/api/activity"
    
    @IBOutlet var activityLabel: UILabel!
    
    @IBAction func boredButtonPressed(_ sender: UIButton) {
        NetworkManager.shared.fetchData(urlAddress: urlAddress) { activity in
            self.activityLabel.text = activity.description
        }
    }
}

