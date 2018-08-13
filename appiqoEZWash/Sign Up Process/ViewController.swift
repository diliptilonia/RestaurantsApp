//
//  ViewController.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 02/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   

    @IBOutlet weak var logInButtonOutlet: UIButton!
    @IBOutlet weak var sigupButtonOutlet: UIButton!
    @IBOutlet weak var logView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //    @IBOutlet weak var emailTextField: UITextField!
//    @IBOutlet weak var passwordTextField: UITextField!
//    @IBOutlet weak var signUpButtonOutlet: UIButton!
//    @IBOutlet weak var continueButtonOutlet: UIButton!
    
    var splashScreen:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextField.addBottomBorder()
        self.passwordTextField.addBottomBorder()
        
        
//        var bottomLine = CALayer()
//        bottomLine.frame = CGRectMake(0.0, emailTextField.frame.height - 1, emailTextField.frame.width, 1.0)
//        bottomLine.backgroundColor = UIColor.white.cgColor
//        emailTextField.borderStyle = UITextBorderStyle.none
//        emailTextField.layer.addSublayer(bottomLine)
        
        logView.layer.cornerRadius = 15
        logView.clipsToBounds = true
        logView.layer.borderColor = UIColor.white.cgColor
        logView.layer.borderWidth = 2
        
        logInButtonOutlet.layer.cornerRadius = 15
        logInButtonOutlet.clipsToBounds = true
        logInButtonOutlet.layer.borderColor = UIColor.white.cgColor
        logInButtonOutlet.layer.borderWidth = 2
        
        
        sigupButtonOutlet.layer.cornerRadius = 30
        sigupButtonOutlet.clipsToBounds = true
        sigupButtonOutlet.layer.borderColor = UIColor.white.cgColor
        sigupButtonOutlet.layer.borderWidth = 2
        
        
        
//        UserDefaults.standard.set(true, forKey: "signUp")

        
//        UserDefaults.standard.set(true, forKey: "pageVC")
 
//        continueButtonOutlet.backgroundColor = UIColor
        showPicker()

//        emailTextField.tintColor = UIColor.orange
//
//        continueButtonOutlet.layer.cornerRadius = 30
//        signUpButtonOutlet.layer.cornerRadius = 30
//        continueButtonOutlet.clipsToBounds = true
//        signUpButtonOutlet.clipsToBounds = true
//        continueButtonOutlet.layer.borderColor = UIColor.white.cgColor
//        signUpButtonOutlet.layer.borderColor = UIColor.white.cgColor
//        continueButtonOutlet.layer.borderWidth = 2
//        signUpButtonOutlet.layer.borderWidth = 2

        
        hideKeyBoard()
    }
    
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "forgotPassword") as! forgotPassword
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    

    

func showPicker() {
//    let toolBar = UIToolbar()
//    toolBar.sizeToFit()
//    let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClicked))
////    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
//
//    toolBar.setItems([doneButton], animated: true)
////    self.passwordTextField.inputAccessoryView = toolBar
//}
//
//@objc func doneClicked() {
//    self.view.endEditing(true)
//}
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

//
//    @IBAction func forgotButton(_ sender: UIButton) {
//    }

//    @IBAction func signUpButton(_ sender: UIButton) {
//        print("Butin lickced")
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LogInView") as! LogInView
//        navigationController?.pushViewController(vc,
//                                                 animated: true)
////        self.performSegue(withIdentifier: "logInView", sender: nil)
//
//    }
//    @IBAction func continueButton(_ sender: UIButton) {
//    }
//
    
    @IBAction func signUpButton(_ sender: UIButton) {
        print("Button tapped")
        print("Butin lickced")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LogInView") as! LogInView
        self.navigationController?.pushViewController(vc,
                                                         animated: true)
     }
    
  
}

extension UITextField {
    
    
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect.init(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.black.cgColor
        self.borderStyle = UITextBorderStyle.none
        self.layer.addSublayer(bottomLine)
        
    }
}

