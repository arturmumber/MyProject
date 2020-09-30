//
//  ChangeCurrencyRight.swift
//  NewConverterCurrency
//
//  Created by Artur Mumber on 25.09.2020.
//  Copyright © 2020 Artur Mumber. All rights reserved.
//

import UIKit

class ChangeCurrencyRight: UIViewController {
    
    let modelConverter = ModelConverter.shared()
    override func viewDidLoad() {
        super.viewDidLoad()
        }
        
    @IBAction func buttonRUB(_ sender: Any) {
        modelConverter.nameCurrencyRightRub()
    }
    
    @IBAction func buttonAUD(_ sender: Any) {
        modelConverter.nameCurrencyRightAud()
    }
    
    @IBAction func buttonBRL(_ sender: Any) {
        modelConverter.nameCurrencyRightBrl()
    }
    
    @IBAction func buttonEUR(_ sender: Any) {
        modelConverter.nameCurrencyRightEur()
    }
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
