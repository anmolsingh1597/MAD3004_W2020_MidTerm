//
//  Integer+extension.swift
//  CO777245_W2020_MID_TERM_MAD3004
//
//  Created by Anmol singh on 2020-02-15.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation

extension Int{
    
    func concatMobilePrefix() -> String{
        return "MOBILE_\(self)"
    }
    func concatInternetPrefix() -> String{
        return "INTERNET_\(self)"
    }
    func concatHydroPrefix() -> String{
         return "HYDRO_\(self)"
     }
    
}
