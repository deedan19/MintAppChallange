//
//  SystemController.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import UIKit

class SystemController: UIViewController {
    @IBOutlet weak var defaultButton: UIButton!
    @IBOutlet weak var lightModeButton: UIButton!
    @IBOutlet weak var darkModeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightModeButton.tintColor = .systemBackground
        darkModeButton.tintColor = .systemBackground
    }
    
    @IBAction func didTapDefaultButton(_ sender: UIButton) {
        lightModeButton.tintColor = .systemBackground
        darkModeButton.tintColor = .systemBackground
        defaultButton.tintColor = .systemBlue
    }
    @IBAction func didTapLightMode(_ sender: UIButton) {
        lightModeButton.tintColor = .systemBlue
        darkModeButton.tintColor = .systemBackground
        defaultButton.tintColor = .systemBackground
        overrideUserInterfaceStyle = .light
        
    }
    @IBAction func didTapDarkMode(_ sender: UIButton) {
        lightModeButton.tintColor = .systemBackground
        darkModeButton.tintColor = .systemBlue
        defaultButton.tintColor = .systemBackground
        overrideUserInterfaceStyle = .dark
      
    }
    
}
