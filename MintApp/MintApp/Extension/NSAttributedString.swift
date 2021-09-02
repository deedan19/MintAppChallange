//
//  NSAttributedString.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import Foundation

extension NSAttributedString {
    static func makeHyperLink (for path: String, in string: String, as substring: String) -> NSAttributedString{
        let nSstring = NSString(string: string)
        let subStringRange = nSstring.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: subStringRange)
        return attributedString
    }
}
