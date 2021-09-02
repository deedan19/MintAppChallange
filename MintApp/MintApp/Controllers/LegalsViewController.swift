//
//  LegalsViewController.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import UIKit

class LegalsViewController: UIViewController {
    @IBOutlet weak var mintAcc: UITextView!
    @IBOutlet weak var mintPrivacy: UITextView!
    @IBOutlet weak var savingGoal: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLinks()
    }
    
    
    
    func setupLinks ()  {
      
        let termsAndConditionLink = "https://bankwithmint.com/privacy-policy"
        let privacyLink = "https://bankwithmint.com/privacy-policy"
        let savingsGoalsLink = "https://bankwithmint.com/goal-based-savings"
        
        let text1 = "Mint Account - Terms and Condition"
        let text2 = "Privacy Policy"
        let text3 = "Savings Goals - Terms and Condition"
        
        let mintAccAttributedString = NSAttributedString.makeHyperLink(for: termsAndConditionLink, in: text1, as: text1)
       
        let privacyAttributedString = NSAttributedString.makeHyperLink(for: privacyLink, in: text2, as: text2)
        let savingGoalsAttributtedString = NSAttributedString.makeHyperLink(for: savingsGoalsLink, in: text3, as: text3)
        
        mintAcc.attributedText = mintAccAttributedString
        mintAcc.font = UIFont.systemFont(ofSize: 16)
        
        mintPrivacy.attributedText = privacyAttributedString
        mintPrivacy.font = UIFont.systemFont(ofSize: 16)
        
        savingGoal.attributedText = savingGoalsAttributtedString
        savingGoal.font = UIFont.systemFont(ofSize: 16)
     
      
    }
    
    
    
    
}
