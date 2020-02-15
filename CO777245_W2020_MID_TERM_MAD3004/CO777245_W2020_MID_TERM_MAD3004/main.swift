//
//  main.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation


var c1 : Customer

c1 = Customer(id: 987, firstName: "Anmol", lastName: "Singh", emailId: "me_anmol@me.com")

c1.display()

/*var b1 = Bill(billId: 008, billDate: Date.from(year: 1989, month: 12, day: 15) ?? Date(), billType: .Mobile, totalBillAmount: 67.998)

b1.display()
*/

var m1 = Mobile(billId: 008, billDate: Date.from(year: 1989, month: 12, day: 24) ?? Date(), mobileManufacturerName: "hghf", planName: "ghjjh", mobileNumber: "997878", internetGbUsed: 988.98, minuteUsed: 887)

m1.display()

var i1 = Internet(billId: 98, billDate: Date.from(year: 2020, month: 01, day: 21) ?? Date(), providerName: "Rogers", plannedGbUsed: 15)

i1.display()

var h1 = Hydro(billId: 0012, billDate: Date(), agencyName: "Canadian Supply", unitConsumed: 32)

h1.display()
