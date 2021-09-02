//
//  ViewController.swift
//  MintApp
//
//  Created by Decagon on 01/09/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 8
    }
    @IBAction func didTapLoginButton(_ sender: UIButton) {
        navigateToHome()
        
    }
    
    func navigateToHome() {
        guard let newVC = storyboard?.instantiateViewController(identifier: "TabbarController") as? UITabBarController else { return }
        newVC.modalPresentationStyle = .fullScreen
        present(newVC, animated: true, completion: nil)
    }
    
    
}

