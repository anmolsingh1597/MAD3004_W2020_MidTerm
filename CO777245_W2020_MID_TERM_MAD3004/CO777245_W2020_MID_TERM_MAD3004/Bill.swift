//
//  Bill.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//

/* Create Bill class containing following attributes with appropriate data types, initializer and methods to manipulate data.
-Bill id, Bill Date, Bill Type and Total Bill Amount */

import Foundation

public class Bill
{
    let billId: Int
    var billDate: Date
    var billType: Enum.BillType
    var billAmount: Double = 0.0
   
    init(billId: Int, billDate: Date ,billType: Enum.BillType){  //constructor
         self.billId = billId //intializing variables necessary in class
         self.billDate = billDate
        self.billType = billType
     
       
     }

    func calculateBill() -> Double{
        return billAmount
    }

    func display(){
        print("Bill Date: \(billDate.getFormattedDate())")
         print("Bill Type: \(billType)")
        print("Bill Amount: \(calculateBill().getFormattedAmount())")
     }
    
}
