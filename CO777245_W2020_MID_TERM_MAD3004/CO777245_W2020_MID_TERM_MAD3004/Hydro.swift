//
//  Hydro.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-15.
//  Copyright © 2020 Swift Project. All rights reserved.
//
/*Create Hydro class which inherits Bill class and containing following attributes with appropriate data types, initializer and methods to manipulate data.
- Agency Name, Unit consumed*/

import Foundation


public class Hydro: Bill
{
    var agencyName: String
    var unitConsumed: Double
    
    init(billId: Int, billDate: Date, agencyName: String, unitConsumed: Double){
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: Enum.BillType.Hydro)
    }
    
   override func calculateBill() -> Double{
        
    super.billAmount = 1.73 * self.unitConsumed
        return super.billAmount
    }
    
    override func display() {
        print("Bill ID : \(self.billId.concatHydroPrefix())")
        super.display()
        print("Agency Name : \(self.agencyName)")
        print("Units Consumed : \(self.unitConsumed.concatUnits())")
    }
    
}
