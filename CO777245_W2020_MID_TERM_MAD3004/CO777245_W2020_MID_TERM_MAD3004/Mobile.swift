//
//  Mobile.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//
/*
 Create Mobile class which inherits Bill class and containing following attributes with appropriate data types, initializer and methods to manipulate data.
 - Mobile Manufacturer Name, Plan Name, mobile number, Internet GB used, Minute used
 */
import Foundation

public class Mobile: Bill
{
    var mobileManufacturerName: String
    var planName: String
    var mobileNumber: String
    var internetGbUsed: Double
    var minuteUsed: Double
    
    init(billId: Int, billDate: Date, mobileManufacturerName: String, planName: String, mobileNumber: String, internetGbUsed: Double, minuteUsed: Double){
        
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGbUsed = internetGbUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate, billType: Enum.BillType.Mobile)
    }
    
   override func calculateBill() -> Double{
        
    super.billAmount = 1 * self.internetGbUsed + 1*minuteUsed
        return super.billAmount
    }
    
    override func display() {
        print("Bill ID: \(billId.concatMobilePrefix())")
        super.display()
        print("Manufactuer Name : \(mobileManufacturerName)")
        print("Plan Name: \(planName)")
        print("Mobile Number: \(mobileNumber)")
        print("Internet Used: \(internetGbUsed)")
        print("Minutes Used: \(minuteUsed)")
        
    }
    
}
