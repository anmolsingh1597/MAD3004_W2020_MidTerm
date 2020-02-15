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
    
    func isValidMobileNumber(value: String) -> Bool {
          let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
          let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
          return result
      }
    
   override func calculateBill() -> Double{
        
    super.billAmount =  3.43 * self.internetGbUsed + 0.73*self.minuteUsed
        return super.billAmount
    }
    
    override func display() {
        print("Bill ID : \(billId.concatMobilePrefix())")
        super.display()
        print("Manufactuer Name : \(mobileManufacturerName)")
        print("Plan Name : \(planName)")
           if self.isValidMobileNumber(value: mobileNumber){
                 print("Mobile Number : \(self.mobileNumber)")
            }
            else{
                print("Mobile Number : invalid mobile number")
            }
        print("Internet Used : \(internetGbUsed.concatGb())")
        print("Minutes Used : \(minuteUsed.concatMinutes())")
        
    }
    
}
