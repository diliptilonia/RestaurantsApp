//
//  contactVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class contactVC: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Reaching here")

        
        firstView.layer.cornerRadius = 25
        firstView.clipsToBounds = true
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2
        
        secondView.layer.cornerRadius = 25
        secondView.clipsToBounds = true
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
