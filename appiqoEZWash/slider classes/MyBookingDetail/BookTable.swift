
//
//  BookTable.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 13/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class BookTable: UIViewController {

    
    let myColor : UIColor = UIColor( red: 0.5, green: 0.5, blue:0, alpha: 1.0 )

    @IBOutlet weak var submitButtonOutlet: UIButton!
    @IBOutlet weak var commentTF: UITextField!
    @IBOutlet weak var wishTF: UITextField!
    @IBOutlet weak var preOrderTF: UITextField!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        submitButtonOutlet.layer.cornerRadius = 21
        submitButtonOutlet.clipsToBounds = true
        submitButtonOutlet.layer.borderColor = UIColor.white.cgColor
        submitButtonOutlet.layer.borderWidth = 2
        
        firstView.layer.cornerRadius = 15
        firstView.clipsToBounds = true
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2
        
        secondView.layer.cornerRadius = 15
        secondView.clipsToBounds = true
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2
        
        preOrderTF.layer.cornerRadius = 20
        preOrderTF.clipsToBounds = true
        preOrderTF.layer.borderColor = #colorLiteral(red: 0.1880794764, green: 0.8667904139, blue: 0.6713806987, alpha: 1)
        preOrderTF.layer.borderWidth = 2
        
        wishTF.layer.cornerRadius = 20
        wishTF.clipsToBounds = true
        wishTF.layer.borderColor = #colorLiteral(red: 0.1880794764, green: 0.8667904139, blue: 0.6713806987, alpha: 1)
        wishTF.layer.borderWidth = 2
        
        commentTF.layer.cornerRadius = 20
        commentTF.clipsToBounds = true
        commentTF.layer.borderColor = #colorLiteral(red: 0.1880794764, green: 0.8667904139, blue: 0.6713806987, alpha: 1)
        commentTF.layer.borderWidth = 2

        nameTextField.addBottomBorder()
        hideKeyBoard()
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "BookingConfirmation") as! BookingConfirmation
        self.navigationController?.pushViewController(vc, animated: true)
    }
    



}
