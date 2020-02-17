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
    var billarray: [Bill]
    init(id: Int, firstName: String, lastName: String, emailId: String, billarray: [Bill]){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        self.billarray = billarray
        arrayToHashMap()
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func arrayToHashMap(){
            for bill in billarray  {
                billDictionary.updateValue(bill, forKey: bill.billId )
            }
    }
    
   /* func assigningBillstoCustomer(bill: Bill){
        billDictionary.updateValue(bill, forKey: bill.billId)
    }
*/
    func totalBillingAmount() ->Double{
        var ref: Double = 0.0
        for index in billDictionary.values{
            totalBill += index.billAmount
            ref = totalBill
            totalBill = 0.0
     }
        return Double(ref)
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
        
            print("\t\t\t\t----Bill Information----")
            print("\t\t****************************************")
          if billDictionary.isEmpty
          {
            print("\t\tThis Customer has no Bills to pay")
          }
          else
          {
              for b in billDictionary.values
                  
              {
                  b.display()
            print("\t\t*****************************************")
                  
              }
            print("\t\t\tTotal Bill Amount to Pay: \(totalBillingAmount().getFormattedAmount())")
            print("\t\t*****************************************")
      }
        print("")
    }
    
}
//sample comit
