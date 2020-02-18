//
//  Insurance.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//


/*Insurance Provider Name, Type of Insurance (e.g. Home, Car, Business, etc.), Start Date, End
Date, Total Days (i.e. End Date – Start Date), Total Installment to pay in given contract.*/

import Foundation

public class Insurance: Bill
{
    var insuranceProviderName: String
    var insuranceType: Enum.InsuranceType
    var startDate: Date
    var endDate: Date
    var totalDays: Int{
        
        return Date.daysBetween(start: startDate, end: endDate)
    }
 
    var totalInstallmentToPay: Double
    
    init(billId: Int, billDate: Date,insuranceProviderName: String, insuranceType: Enum.InsuranceType, startDate: Date, endDate: Date, totalInstallmentToPay: Double){
        
        self.insuranceProviderName = insuranceProviderName
        self.insuranceType = insuranceType
        self.startDate = startDate
        self.endDate = endDate
        self.totalInstallmentToPay = totalInstallmentToPay
        super.init(billId: billId, billDate: billDate, billType: Enum.BillType.Insurance)
     }

   override func calculateBill() -> Double{
        switch self.insuranceType{
        case Enum.InsuranceType.Car:
            super.billAmount = Double(totalDays)*0.236
        case Enum.InsuranceType.Home:
            super.billAmount = Double(totalDays)*1.236
        case Enum.InsuranceType.Business:
            super.billAmount = Double(totalDays)*1.436
        default :
            print("Default")
        }
        return super.billAmount
    }

  override func display(){
        print("\t\tBill ID : \(self.billId.concatInsurancePrefix())")
        super.display()
        print("\t\tInsurance Name Provider : \(self.insuranceProviderName)")
        print("\t\tInsurance Type : \(self.insuranceType)")
        print("\t\tStart Date : \(self.startDate.getFormattedDate())")
        print("\t\tEnd Date : \(self.endDate.getFormattedDate())")
        print("\t\tTotal Days : \(self.totalDays)")
    print("\t\tTotal Installement To Pay : \(self.totalInstallmentToPay.getFormattedAmount())")
     }
    
}

