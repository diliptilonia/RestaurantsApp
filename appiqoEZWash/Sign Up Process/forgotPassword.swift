//
//  forgotPassword.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 10/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class forgotPassword: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sendPassOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        
        hideKeyBoard()
        
        sendPassOutlet.layer.cornerRadius = 25
        sendPassOutlet.clipsToBounds = true
        sendPassOutlet.layer.borderColor = UIColor.white.cgColor
        sendPassOutlet.layer.borderWidth = 1
//        sendPassOutlet.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        sendPassOutlet.layer.shadowOffset = CGSize(width: 0, height: 3)
//        sendPassOutlet.layer.shadowOpacity = 1.0
//        sendPassOutlet.layer.shadowRadius = 10.0
        
        
        emailTextField.layer.cornerRadius = 30
        emailTextField.clipsToBounds = true
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.layer.borderWidth = 2
        

        
//        profilePic.layer.borderWidth = 1
//        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.layer.masksToBounds = false
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    @IBAction func sendPassButtonTapped(_ sender: UIButton) {
        print("pop it")
//        
//        let st = UIStoryboard(name: "Main", bundle: nil)
//        let vc = st.instantiateViewController(withIdentifier: "logInVC") as! ViewController
//        self.navigationController?.pushViewController(vc, animated: true)
       
    }
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

//class MyTextField : UITextField {
//    var leftTextMargin : CGFloat = 0.0
//
//    override func textRectForBounds(bounds: CGRect) -> CGRect {
//        var newBounds = bounds
//        newBounds.origin.x += leftTextMargin
//        return newBounds
//    }
//
//    override func editingRectForBounds(bounds: CGRect) -> CGRect {
//        var newBounds = bounds
//        newBounds.origin.x += leftTextMargin
//        return newBounds
//    }
//}


