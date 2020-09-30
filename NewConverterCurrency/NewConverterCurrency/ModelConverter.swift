//
//  ModelConverter.swift
//  NewConverterCurrency
//
//  Created by Artur Mumber on 25.09.2020.
//  Copyright © 2020 Artur Mumber. All rights reserved.
//

import UIKit

class ModelConverter: NSObject {
    
    private static var uniqueInstance: ModelConverter?

    private override init() {}
    
    static func shared () -> ModelConverter {
        if uniqueInstance == nil {
            uniqueInstance = ModelConverter()
        }
        return uniqueInstance!
    }
    
    var delegate: changeNameConverterProtocol?
    
    func nameCurrencyLeftRub() {
        delegate?.changeLabelLeftRub()
    }
    func nameCurrencyLeftAud() {
        delegate?.changeLabelLeftAud()
    }
    func nameCurrencyLeftBrl() {
        delegate?.changeLabelLeftBrl()
       }
    func nameCurrencyLeftEur() {
        delegate?.changeLabelLeftEur()
       }
    func nameCurrencyRightAud() {
        delegate?.changeLabelRightAud()
          }
    func nameCurrencyRightRub() {
        delegate?.changeLabelRightRub()
       }
    func nameCurrencyRightBrl() {
        delegate?.changeLabelRightBrl()
       }
    func nameCurrencyRightEur() {
        delegate?.changeLabelRightEur()
       }
}


protocol changeNameConverterProtocol: AnyObject {
    func changeLabelLeftRub()
    func changeLabelLeftAud()
    func changeLabelLeftBrl()
    func changeLabelLeftEur()
    func changeLabelRightRub()
    func changeLabelRightAud()
    func changeLabelRightBrl()
    func changeLabelRightEur()

}






