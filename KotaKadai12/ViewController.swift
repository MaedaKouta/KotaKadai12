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
    private let taxRateKey = "taxRate"

    override func viewDidLoad() {
        super.viewDidLoad()
        taxRateTextField.text = UserDefaults.standard.string(forKey: taxRateKey)
    }

    @IBAction private func didTapCalculateButton(_ sender: Any) {
        if let noneTaxMoney = Int(noneTaxMoneyTextField.text ?? ""), let taxRate = Int(taxRateTextField.text ?? "") {
            let inTaxMoney = noneTaxMoney + ( noneTaxMoney * taxRate / 100 )
            inTaxMoneyLabel.text = String(inTaxMoney)
            UserDefaults.standard.set(taxRateTextField.text, forKey: taxRateKey)
        } else {
            inTaxMoneyLabel.text = ""
        }
    }

}

