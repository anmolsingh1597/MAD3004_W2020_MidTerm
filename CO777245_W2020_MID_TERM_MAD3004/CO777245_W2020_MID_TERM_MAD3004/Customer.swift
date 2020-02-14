//
//  Customer.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-13.
//  Copyright © 2020 Swift Project. All rights reserved.
//

/*
 Create Customer class containing following attributes with appropriate data types, initializer and methods to manipulate data.
 - Customer Id, first name, last name, full name, email id, Bill Dictionary to store all types of bills and Total amount to pay
 */

import Foundation

public class Customer: IDisplay
{
    
    let id: Int
    var firstName: String
    var lastName: String
    var fullName:String{
        return "\(firstName) \(lastName)"
    }
    var emailId: String
    var billDictionary: [String: Double]
    
    init(id: Int, firstName: String, lastName: String, emailId: String, billDictionary:[String: Double]){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        self.billDictionary = billDictionary
    }
    
    func display() {
        print("Customer Id : \(self.id)")
        print("Customer Full Name : \(self.fullName)")
        print("Customer Email ID : \(self.emailId)")
        print("Bill : \(self.billDictionary)")
        
    }
    
}
