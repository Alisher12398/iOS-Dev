//
//  AddContactViewController.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

protocol AddContactDelegate {
    func didCreateContact(contact: Contact)
}


class AddContactViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let colors = ["No","Red","Yellow","Green","Blue"]
    var selectedTag = "Noo"
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       selectedTag = colors[row]
    }
    

    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    var delegate: AddContactDelegate?
    
    @IBOutlet weak var tagSelectPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tagSelectPickerView.delegate = self
        tagSelectPickerView.dataSource = self

        let addButton = UIBarButtonItem.init(title: "Add", style: .done, target: self, action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItem = addButton
        
    }
    
    @objc
    func addTapped() {
        
        guard firstnameField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        guard phoneField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your phone", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        let contact = Contact.init(firstname: firstnameField.text ?? "", lastname: lastnameField.text ?? "", phone: phoneField.text ?? "", tag: selectedTag)
        
        delegate?.didCreateContact(contact: contact)

        self.navigationController?.popViewController(animated: true)
        
    }
    

}
