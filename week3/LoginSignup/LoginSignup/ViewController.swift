//
//  ViewController.swift
//  LoginSignup
//
//  Created by Ninn on 2019/11/20.
//  Copyright © 2019 Ninn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var account: String = ""
    var password: String = ""
    var checkPsd: String = ""
    var checkEnable: Bool = false
    
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountEditText: UITextField!
    @IBOutlet weak var passwordEditText: UITextField!
    @IBOutlet weak var checkPsdEditText: UITextField!
    
    @IBAction func segmantAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkLabel.textColor = UIColor.gray
            checkPsdEditText.text = ""
            checkPsdEditText.backgroundColor = UIColor.gray
            checkPsdEditText.isUserInteractionEnabled = false
        } else {
            checkLabel.textColor = UIColor.black
            checkPsdEditText.backgroundColor = UIColor.white
            checkPsdEditText.isUserInteractionEnabled = true

        }
        checkEnable = checkPsdEditText.isUserInteractionEnabled
    }
    
    @IBAction func button(_ sender: UITextField) {
        var msg: String? = "Success"
        
        do {
            try checkUserInfo(acc: account, psw: password, chkpsd: checkPsd, checkEnable: checkEnable)
        } catch let error {
            guard let invalidError = error as? InvalidError else {
                return
            }
            msg = invalidError.rawValue
        }
        
        let title = "Success" == msg ? "" : "Error"
        let alertDialog = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertDialog.addAction(action)
        present(alertDialog, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountEditText.delegate = self
        passwordEditText.delegate = self
        checkPsdEditText.delegate = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

