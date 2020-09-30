//
//  ChangeCurrencyLeft.swift
//  NewConverterCurrency
//
//  Created by Artur Mumber on 25.09.2020.
//  Copyright © 2020 Artur Mumber. All rights reserved.
//

import UIKit

class ChangeCurrencyLeft: UIViewController {

    let modelConverter = ModelConverter.shared()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func buttonRUB(_ sender: Any) {
        modelConverter.nameCurrencyLeftRub()
    }
    @IBAction func buttonAUD(_ sender: Any) {
        modelConverter.nameCurrencyLeftAud()
    }
    @IBAction func buttonBRL(_ sender: Any) {
        modelConverter.nameCurrencyLeftBrl()
    }
    @IBAction func buttonEur(_ sender: Any) {
        modelConverter.nameCurrencyLeftEur()
    }
    
}


