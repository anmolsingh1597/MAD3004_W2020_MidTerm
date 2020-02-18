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
    var totalInstallment: Double = 0.0
    
    init(billId: Int, billDate: Date,insuranceProviderName: String, insuranceType: Enum.InsuranceType, startDate: Date, endDate: Date){
        
        self.insuranceProviderName = insuranceProviderName
        self.insuranceType = insuranceType
        self.startDate = startDate
        self.endDate = endDate
        super.init(billId: billId, billDate: billDate, billType: Enum.BillType.Insurance)
     }

    func calculateInsuranceBill() -> Double{
        switch self.insuranceType{
        case Enum.InsuranceType.Car:
            totalInstallment = Double(totalDays)*12.36
        case Enum.InsuranceType.Home:
            print("Home")
        case Enum.InsuranceType.Business:
            print("Businiess")
        default :
            print("Default")
        }
        return totalInstallment
    }

    func display(){
        print("\t\tInsurance ID : \(self.insuranceId.concatInsurancePrefix())")
        print("\t\tInsurance Name Provider : \(self.insuranceProviderName)")
        print("\t\tInsurance Type : \(self.insuranceType)")
        print("\t\tStart Date : \(self.startDate.getFormattedDate())")
        print("\t\tEnd Date : \(self.endDate.getFormattedDate())")
        print("\t\tTotal Days : \(self.totalDays)")
     }
    
}

