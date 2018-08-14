//
//  LogInView.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 03/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class LogInView: UIViewController {

//    @IBOutlet weak var firstNameTextField: UITextField!
//    @IBOutlet weak var secondNameTextField: UITextField!
//    @IBOutlet weak var emailTextField: UITextField!
//    @IBOutlet weak var passwordTextField: UITextField!
//
//    @IBOutlet weak var logInButtonOutlat: UIButton!
//    @IBOutlet weak var signUpButtonOutlat: UIButton!
    

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    @IBOutlet weak var signUpView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
//        firstName.addBottomBorder()
//        lastName.addBottomBorder()
//        email.addBottomBorder()
//        password.addBottomBorder()
//        confirmPassword.addBottomBorder()
//        phoneNumber.addBottomBorder()
        
        
        signUpView.layer.cornerRadius = 15
        signUpView.clipsToBounds = true
        signUpView.layer.borderColor = UIColor.white.cgColor
        signUpView.layer.borderWidth = 2
        
        signUpButtonOutlet.layer.cornerRadius = 15
        signUpButtonOutlet.clipsToBounds = true
        signUpButtonOutlet.layer.borderColor = UIColor.white.cgColor
        signUpButtonOutlet.layer.borderWidth = 2
        
        
        buttonsDesign()
    hideKeyBoard()

    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        print("button pressed")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "OTPvc") as! OTPvc
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

    func buttonsDesign() {
//        signUpButtonOutlat.layer.cornerRadius = 30
//
//        signUpButtonOutlat.clipsToBounds = true
//        signUpButtonOutlat.layer.borderColor = UIColor.white.cgColor
//
//        signUpButtonOutlat.layer.borderWidth = 2
//
//        logInButtonOutlat.layer.cornerRadius = 30
//
//        logInButtonOutlat.clipsToBounds = true
//        logInButtonOutlat.layer.borderColor = UIColor.white.cgColor
//
//        logInButtonOutlat.layer.borderWidth = 2
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
   
    @IBAction func backButton(_ sender: UIButton) {
        print("pop it")
        self.dismiss(animated: false, completion: nil)
    }
    
  
}
