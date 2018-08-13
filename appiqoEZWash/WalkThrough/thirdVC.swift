//
//  thirdVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class thirdVC: UIViewController {

    @IBOutlet weak var startButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        startButtonOutlet.layer.cornerRadius = 27
//        startButtonOutlet.clipsToBounds = true
//        startButtonOutlet.layer.borderColor = UIColor.white.cgColor
//        startButtonOutlet.layer.borderWidth = 2
        // Do any additional setup after loading the view.
    }

    @IBAction func firstVCSkipButton(_ sender: UIButton) {
        print("Skip from first vc")
        sender.backgroundColor = UIColor.black
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
        present(vc, animated: true)
    }
    @IBAction func secondVCSkipButton(_ sender: UIButton) {
        print("Skip from second vc")
        sender.backgroundColor = UIColor.black
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
        present(vc, animated: true)
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        sender.backgroundColor = UIColor.black
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
        present(vc, animated: true)
//        self.navigationController?.pushViewController(vc, animated: true)
//        present(vc, animated: true, completion: nil)
    }
    

}
