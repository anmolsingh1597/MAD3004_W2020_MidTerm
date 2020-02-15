//
//  Double+extension.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-15.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation

   extension Double{
       func getFormattedAmount() -> String
    {
           return String(format: "$%0.2f", Double(self))
    }
    
    func concatGb() -> String
    {
        return "\(self) GB"
    }
    
    func concatMinutes() -> String
    {
        return "\(self) minutes"
    }
    
    func concatUnits() -> String
    {
        return "\(self) units"
    }
    
}
