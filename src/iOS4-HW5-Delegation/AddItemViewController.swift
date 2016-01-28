//
//  AddItemViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit

protocol saveNewData {
    func saveData(listData:Data)
}

class AddItemViewController: UIViewController {

    var delegate:saveNewData?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        let listItem = Data()
        listItem.info = itemTextField.text!
        delegate?.saveData(listItem)
        
        navigationController?.popViewControllerAnimated(true)
    }
}

