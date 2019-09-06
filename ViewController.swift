//
//  ViewController.swift
//  NSMutableAttributedString
//
//  Created by Manvendra on 06/08/19.
//  Copyright ©2018 iosManvendra. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setAttributedText()
    }
    func setAttributedText() {
        let text = "This article will explain about attributedString."
        let attributedText = text.getAttributedString()
        attributedText.apply(color: .red, subString: "This")
        attributedText.apply(font: UIFont.boldSystemFont(ofSize: 24), subString: "This")
        attributedText.underLine(subString: "article")
        attributedText.applyShadow(shadowColor: .black, shadowWidth: 4.0, shadowHeigt: 4.0, shadowRadius: 4.0, subString: "attributedString")
        label.attributedText = attributedText
    }
}

