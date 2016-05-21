//
//  DataService.swift
//  Calendar3
//
//  Created by Patrick Moening on 5/19/16.
//  Copyright © 2016 Fiskisoft. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    let KEY_USE = "use"
    
    private var _loadedUses = [Use]()
    
    var loadedUses : [Use] {
        return _loadedUses
    }
    
    func saveUse(){
        let useData = NSKeyedArchiver.archivedDataWithRootObject(_loadedUses)
        NSUserDefaults.standardUserDefaults().setObject(useData, forKey: KEY_USE)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    func loadUse(){
        if let useData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_USE) as? NSData{
            if let useArray = NSKeyedUnarchiver.unarchiveObjectWithData(useData) as? [Use]{
                _loadedUses = useArray
            }
        }
        
    }
    
    func addUse(use: Use){
       _loadedUses.append(use)
        saveUse()
        loadUse()
    }
    
}