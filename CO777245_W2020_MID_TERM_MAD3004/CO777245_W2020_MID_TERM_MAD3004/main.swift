//
//  main.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation

var mBill1 = Mobile(billId: 1, billDate: Date.from(year: 2020, month: 02, day: 14) ?? Date(), mobileManufacturerName: "Apple Inc. iPhone XR", planName: "LTE+4G 9.5GB Promo plan", mobileNumber: "416-666-4181", internetGbUsed: 58.98, minuteUsed: 887)

var mBill2 = Mobile(billId: 2, billDate: Date(), mobileManufacturerName: "Galaxy Samsung Inc.", planName: "Prepaid Talk + Text plan", mobileNumber: "416-432-2234", internetGbUsed: 67.00, minuteUsed: 34.45)


var iBill1 = Internet(billId: 3, billDate: Date.from(year: 2020, month: 01, day: 21) ?? Date(), providerName: "Rogers", plannedGbUsed: 150)

var iBill2 = Internet(billId: 4, billDate: Date(), providerName: "Bell", plannedGbUsed: 250)


var hBill1 = Hydro(billId: 5, billDate: Date(), agencyName: "Canadian Supply", unitConsumed: 32)

var hBill2 = Hydro(billId: 6, billDate: Date.from(year: 2020, month: 01, day: 18) ?? Date(), agencyName: "Planet Energy", unitConsumed: 45)

var insBill1 = Insurance(billId: 7, billDate: Date.from(year: 2020, month: 02, day: 08) ?? Date(), insuranceProviderName: "Aviva Canada Inc.", insuranceType: .Home, startDate: Date.from(year: 2019, month: 01, day: 01) ?? Date(), endDate: Date.from(year: 2019, month: 12, day: 31) ?? Date())

var c1 : Customer = Customer(id: 1, firstName: "Anmol", lastName: "Singh", emailId: "me_anmol@me.com", billarray: [mBill1, iBill1])

var c2 : Customer = Customer(id: 2, firstName: "Aman", lastName: "Kaur", emailId: "me_aman@me.com", billarray: [mBill2, iBill2, hBill1])

var c3 : Customer = Customer(id: 4, firstName: "Ikroop", lastName: "Virk", emailId: "me_ikroop@me.com", billarray: [hBill2, insBill1])

var c4 : Customer = Customer(id: 3, firstName: "Monica", lastName: "Sharma", emailId: "me_monica@me.com", billarray: [])


var arrangingCustomerInDictionary = [Int: Customer]()  // customer dictionary
func addCustomer(customer: Customer){
arrangingCustomerInDictionary.updateValue(customer, forKey: customer.id)
}

addCustomer(customer: c1)
addCustomer(customer: c2)
addCustomer(customer: c3)
addCustomer(customer: c4)


for c in arrangingCustomerInDictionary.keys.sorted(){

    arrangingCustomerInDictionary[c]?.display()
}

func getCustomerById(getByCustomerId: Int){
    if arrangingCustomerInDictionary.keys.contains(getByCustomerId)
    {
        print("\t\t########## Customer Fetched By ID ##########")
        print()
        arrangingCustomerInDictionary[getByCustomerId]?.display()
    }else{
        print("Customer Not Found...")
        print()
    }
    
}

getCustomerById(getByCustomerId: 3)

