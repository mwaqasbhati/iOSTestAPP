//
// Created by M Waqas
// Copyright (c) 2020 M Waqas. All rights reserved.
//

import Foundation

class CurrencyListLocalDataManager: CurrencyListLocalDataManagerInputProtocol {
    func loadCurrencyListArrayFromBundle() -> NSArray {
        let mainBundle = Bundle.main
        let path = mainBundle.path(forResource: "CountryData", ofType: "plist")
        return NSArray(contentsOfFile: path!) ?? []
    }
}
