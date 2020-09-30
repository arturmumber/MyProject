//
//  ViewController.swift
//  NewConverterCurrency
//
//  Created by Artur Mumber on 25.09.2020.
//  Copyright © 2020 Artur Mumber. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var rightLabel: UILabel!

    let modelConverter = ModelConverter.shared
        override func viewDidLoad() {
            super.viewDidLoad()
                modelConverter().delegate = self
    }
    
    
@IBAction func convertButton(_ sender: Any) {
   

let url = URL(string: "https://www.cbr-xml-daily.ru/daily_json.js")!

    
  let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    
    var jsonResultAUD: NSDictionary?
    var jsonResultBRL: NSDictionary?
    var jsonResultEUR: NSDictionary?
            
    do {
        jsonResultAUD = try
            JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
            
          }
                catch let error as NSError {
                    print(error.localizedDescription)
        
          }
  
    do {
        jsonResultBRL = try
            JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
              
            }
                catch let error as NSError {
                    print(error.localizedDescription)
          
            }
    do {
        jsonResultEUR = try
            JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
        
      }
                catch let error as NSError {
                    print(error.localizedDescription)
    
      }
    
    
if let result = jsonResultAUD {
    print(result["Valute"] ?? "Error")
    
if let result2 = result["Valute"] as? NSDictionary {
    print(result2["AUD"] ?? "Error")
        
if let resultAUD = result2["AUD"] as? NSDictionary{
    print(resultAUD["Value"] ?? "Error")
        
if let result = jsonResultBRL {
    print(result["Valute"] ?? "Error")
    
if let result2 = result["Valute"] as? NSDictionary {
    print(result2["BRL"] ?? "Error")
        
if let resultBRL = result2["BRL"] as? NSDictionary{
    print(resultBRL["Value"] ?? "Error")
        
        
if let result = jsonResultEUR {
    print(result["Valute"] ?? "Error")

if let result2 = result["Valute"] as? NSDictionary {
    print(result2["EUR"] ?? "Error")
        
if let resultEUR = result2["EUR"] as? NSDictionary{
    print(resultEUR["Value"] ?? "Error")
   
        
let audValue = resultAUD["Value"] as? Double
let brlValue = resultBRL["Value"] as? Double
let eurValue = resultEUR["Value"] as? Double
    
DispatchQueue.main.async {
    if self.leftLabel.text == "RUB", self.rightLabel.text == "RUB"{
DispatchQueue.main.async {
    let rubToRub: Double = (((Double(self.inputTextField.text!)!) * 1))
DispatchQueue.main.async {
    self.outputTextField.text = String(rubToRub)
    
    }}}}
    
DispatchQueue.main.async {
    if self.leftLabel.text == "RUB", self.rightLabel.text == "AUD" {
DispatchQueue.main.async {
    let rubToAud: Double = ((Double(self.inputTextField.text!)!) / (Double(audValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(rubToAud)
                
    }}}}
    
DispatchQueue.main.async {
    if self.leftLabel.text == "RUB", self.rightLabel.text == "BRL" {
DispatchQueue.main.async {
    let rubToBrl: Double = ((Double(self.inputTextField.text!)!) / (Double(brlValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(rubToBrl)
            
    }}}}
    
DispatchQueue.main.async {
    if self.leftLabel.text == "RUB", self.rightLabel.text == "EUR" {
DispatchQueue.main.async {
    let rubToEur: Double = ((Double(self.inputTextField.text!)!) / (Double(eurValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(rubToEur)
            
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "AUD", self.rightLabel.text == "RUB" {
DispatchQueue.main.async {
    let audToRub: Double = ((Double(self.inputTextField.text!)!) * (Double(audValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(audToRub)
            
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "AUD", self.rightLabel.text == "AUD"{
DispatchQueue.main.async {
    let audToAud: Double = (((Double(self.inputTextField.text!)!) * 1))
DispatchQueue.main.async {
    self.outputTextField.text = String(audToAud)
                                
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "AUD", self.rightLabel.text == "BRL"{
DispatchQueue.main.async {
    let audToBrl: Double = (((Double(self.inputTextField.text!)!) * (Double(audValue!))) / (Double(brlValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(audToBrl)
                                
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "AUD", self.rightLabel.text == "EUR"{
DispatchQueue.main.async {
    let audToEur: Double = (((Double(self.inputTextField.text!)!) * (Double(audValue!))) / (Double(eurValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(audToEur)
                                        
    }}}}

DispatchQueue.main.async {
    if self.leftLabel.text == "BRL", self.rightLabel.text == "RUB" {
DispatchQueue.main.async {
    let brlToRub: Double = ((Double(self.inputTextField.text!)!) * (Double(brlValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(brlToRub)
        
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "BRL", self.rightLabel.text == "AUD"{
DispatchQueue.main.async {
    let brlToAud: Double = (((Double(self.inputTextField.text!)!) * (Double(brlValue!))) / (Double(audValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(brlToAud)
                
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "BRL", self.rightLabel.text == "BRL"{
DispatchQueue.main.async {
    let brlToBrl: Double = (((Double(self.inputTextField.text!)!) * 1))
DispatchQueue.main.async {
    self.outputTextField.text = String(brlToBrl)
                        
    }}}}

DispatchQueue.main.async {
    if self.leftLabel.text == "BRL", self.rightLabel.text == "EUR"{
DispatchQueue.main.async {
    let brlToEur: Double = (((Double(self.inputTextField.text!)!) * (Double(brlValue!))) / (Double(eurValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(brlToEur)
                        
    }}}}

        
DispatchQueue.main.async {
    if self.leftLabel.text == "EUR", self.rightLabel.text == "RUB" {
DispatchQueue.main.async {
    let eurToRub: Double = ((Double(self.inputTextField.text!)!) * (Double(eurValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(eurToRub)
        
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "EUR", self.rightLabel.text == "AUD" {
DispatchQueue.main.async {
    let eurToAud: Double = (((Double(self.inputTextField.text!)!) * (Double(eurValue!))) / (Double(audValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(eurToAud)
                
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "EUR", self.rightLabel.text == "BRL" {
DispatchQueue.main.async {
    let eurToBrl: Double = (((Double(self.inputTextField.text!)!) * (Double(eurValue!))) / (Double(brlValue!)))
DispatchQueue.main.async {
    self.outputTextField.text = String(eurToBrl)
                        
    }}}}
        
DispatchQueue.main.async {
    if self.leftLabel.text == "EUR", self.rightLabel.text == "EUR" {
DispatchQueue.main.async {
    let eurToEur: Double = ((Double(self.inputTextField.text!)!) * 1)
DispatchQueue.main.async {
    self.outputTextField.text = String(eurToEur)
                                
    }}}}
        
        
}}}}}}}}}}
    
task.resume()

    }
}

extension ViewController: changeNameConverterProtocol {
    
    func changeLabelLeftAud() {
        leftLabel.text = "AUD"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelRightAud() {
        rightLabel.text = "AUD"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelLeftBrl() {
        leftLabel.text = "BRL"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelRightBrl() {
        rightLabel.text = "BRL"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelLeftEur() {
        leftLabel.text = "EUR"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelRightEur() {
        rightLabel.text = "EUR"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelLeftRub() {
        leftLabel.text = "RUB"
            dismiss(animated: true, completion: nil)
    }
    func changeLabelRightRub() {
        rightLabel.text = "RUB"
            dismiss(animated: true, completion: nil)
    }
}

