//
//  Internet.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-15.
//  Copyright © 2020 Swift Project. All rights reserved.
//

/*Create Internet class which inherits Bill class and containing following attributes with appropriate data types, initializer and methods to manipulate data.
- Provider Name, Internet GB used*/

import Foundation

public class Internet: Bill
{
    var providerName: String
    var plannedGbUsed: Double
    
    init(billId: Int, billDate: Date, providerName: String, plannedGbUsed: Double){
        self.providerName = providerName
        self.plannedGbUsed = plannedGbUsed
        super.init(billId: billId, billDate: billDate, billType: Enum.BillType.Internet)
    }
    
   override func calculateBill() -> Double{
        
    super.billAmount = 10 * self.plannedGbUsed
        return super.billAmount
    }
    
    override func display() {
        print("Bill ID: \(self.billId.concatInternetPrefix())")
        super.display()
        print("Provider Name: \(self.providerName)")
        print("Internet GB Used: \(self.plannedGbUsed)")
    }
    
}
