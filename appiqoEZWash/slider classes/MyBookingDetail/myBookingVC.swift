//
//  myBookingVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class myBookingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bookingList: [myBookingClass] = []
    
//    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        tableView.tableHeaderView = headerView
        tableView.backgroundView = UIImageView(image: UIImage(named: "bg.png"))


        bookingList = createWashingArray()
    }
    func createWashingArray() -> [myBookingClass] {
        var tempBookingList: [myBookingClass] = []
        let order1 = myBookingClass(image: #imageLiteral(resourceName: "wash1"), title: "NAME 1", address: "Serving Area 1", price: "24", date: "04-06-2018")
        let order2 = myBookingClass(image: #imageLiteral(resourceName: "wash1"), title: "NAME 2", address: "Serving Area 2", price: "55",date: "02-05-2018")
        
        tempBookingList.append(order1)
        tempBookingList.append(order2)
        return tempBookingList
    }

}

extension myBookingVC {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookingList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! myBookingCustomCell
        let booked = bookingList[indexPath.row]
        
        cell.setWash(booked: booked)
        cell.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.imageOfWashType.layer.masksToBounds = true
        cell.imageOfWashType.layer.cornerRadius = 20
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicker on booking did selecte")
        let bookedData = bookingList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MyBookingDetails") as! MyBookingDetails
        vc.titleLab = bookedData.title
        vc.addressLab = bookedData.address
        vc.priceLab = bookedData.price
//        vc.orderStatuLab = bookedData.orderStatus
        vc.dateLab = bookedData.date
        vc.imageLab = #imageLiteral(resourceName: "wash1")
        
        navigationController?.pushViewController(vc, animated: true)
        

    }
}








