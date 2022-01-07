//
//  ViewController.swift
//  rogerbank
//
//  Created by Rogério Tavares on 06/01/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var initButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func callDashboardScreen(_ sender: Any) {
        guard let dashboardController = storyboard?.instantiateViewController(withIdentifier: "DashboardScreen") as? DashboardViewController else {
            return
        }
        
        
        navigationController?.pushViewController(dashboardController, animated: true)
    }
}

