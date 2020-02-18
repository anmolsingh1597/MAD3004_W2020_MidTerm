//
//  Integer+extension.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-15.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation

extension Int{
    
    func concatCustomerPrefix() -> String
    {
        return "C000\(self)"
    }
    
    func concatMobilePrefix() -> String
    {
        return "MOBB000\(self)"
    }
    func concatInternetPrefix() -> String
    {
        return "INTB000\(self)"
    }
    func concatHydroPrefix() -> String
    {
         return "HYDB000\(self)"
    }
    
    func concatInsurancePrefix() -> String
    {
        return "INS000\(self)"
    }
    
    }
