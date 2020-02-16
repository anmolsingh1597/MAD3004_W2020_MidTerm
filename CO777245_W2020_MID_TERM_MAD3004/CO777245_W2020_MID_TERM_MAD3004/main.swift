//
//  main.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation

var mBill1 = Mobile(billId: 1, billDate: Date.from(year: 2019, month: 12, day: 24) ?? Date(), mobileManufacturerName: "Apple Inc. iPhone X MAX+", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "416-666-4181", internetGbUsed: 58.98, minuteUsed: 887)

var mBill2 = Mobile(billId: 2, billDate: Date(), mobileManufacturerName: "Galaxy Samsung Inc.", planName: "Prepaid Talk + Text plan", mobileNumber: "416-432-2234", internetGbUsed: 67.00, minuteUsed: 34.45)

//mBill1.display()

//mBill2.display()

var iBill1 = Internet(billId: 3, billDate: Date.from(year: 2020, month: 01, day: 21) ?? Date(), providerName: "Rogers", plannedGbUsed: 150)

var iBill2 = Internet(billId: 4, billDate: Date(), providerName: "Bell", plannedGbUsed: 250)

//iBill1.display()

//iBill2.display()

var hBill1 = Hydro(billId: 5, billDate: Date(), agencyName: "Canadian Supply", unitConsumed: 32)

var hBill2 = Hydro(billId: 6, billDate: Date.from(year: 2020, month: 01, day: 18) ?? Date(), agencyName: "Planet Energy", unitConsumed: 45)

//hBill1.display()

//hBill2.display()

var c1 : Customer = Customer(id: 1, firstName: "Anmol", lastName: "Singh", emailId: "me_anmol@me.com", billarray: [mBill1, iBill1])

var c2 : Customer = Customer(id: 2, firstName: "Aman", lastName: "Kaur", emailId: "me_aman@me.com", billarray: [mBill2, iBill2, hBill1])

var c3 : Customer = Customer(id: 3, firstName: "Ikroop", lastName: "Virk", emailId: "me_ikroop@me.com", billarray: [hBill2])

var c4 : Customer = Customer(id: 4, firstName: "Monica", lastName: "Sharma", emailId: "me_monica@me.com", billarray: nil)


c1.assigningBillstoCustomer(bill: mBill1)
c1.assigningBillstoCustomer(bill: iBill1)
c2.assigningBillstoCustomer(bill: mBill2)
c2.assigningBillstoCustomer(bill: iBill2)
c2.assigningBillstoCustomer(bill: hBill1)
c3.assigningBillstoCustomer(bill: hBill2)

var custDictionary = [Int: Customer]()
func addCustomer(cust: Customer){
custDictionary.updateValue(cust, forKey: cust.id)

}
addCustomer(cust: c1)
addCustomer(cust: c2)
addCustomer(cust: c3)
addCustomer(cust: c4)

for c in custDictionary.keys.sorted(){

    custDictionary[c]?.display()
}
