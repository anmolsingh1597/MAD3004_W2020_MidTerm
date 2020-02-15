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
    var totalBill: Double = 0.0
    var billDictionary = [Int: Bill]()
    
    init(id: Int, firstName: String, lastName: String, emailId: String){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    
    func addingBillstoCustomer(bill: Bill){
        billDictionary.updateValue(bill, forKey: bill.billId)
        
    }
    
    func totalBillingAmount(){
        for index in billDictionary.values{
            totalBill += index.billAmount
        }
    }
    
    func display() {
        print("Customer Id : \(self.id.concatCustomerPrefix())")
        print("Customer Full Name : \(self.fullName)")
        if self.isValidEmail(email: emailId){
             print("Customer Email ID : \(self.emailId)")
        }
        else{
            print("Customer Email ID : invalid email")
        }
        
    }
    
}
