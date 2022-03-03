//
//  ViewController.swift
//  KotaKadai12
//
//  Created by 前田航汰 on 2022/03/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var noneTaxMoneyTextField: UITextField!
    @IBOutlet private weak var taxRateTextField: UITextField!
    @IBOutlet private weak var inTaxMoneyLabel: UILabel!
    private let taxRateString = "taxRateText"

    override func viewDidLoad() {
        super.viewDidLoad()
        taxRateTextField.text = UserDefaults.standard.string(forKey: taxRateString)
    }

    @IBAction private func didTapCalculateButton(_ sender: Any) {
        if let noneTaxMoneyInt = Int(noneTaxMoneyTextField.text ?? ""), let taxRateInt = Int(taxRateTextField.text ?? "") {
            let inTaxMoneyInt = noneTaxMoneyInt + ( noneTaxMoneyInt * taxRateInt / 100 )
            inTaxMoneyLabel.text = String(inTaxMoneyInt)
            UserDefaults.standard.set(taxRateTextField.text, forKey: taxRateString)
        } else {
            inTaxMoneyLabel.text = ""
        }
    }

}

