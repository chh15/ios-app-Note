//
//  DataSubText.swift
//  NotePad
//
//  Created by apple on 2018/12/2.
//  Copyright © 2018年 NJU.czf. All rights reserved.
//

//import Foundation
import UIKit

class DataSubText{
    
    // MARK: Properties
    
    var notes: String
    
    // MARK: Initialization
    
    init?(notes: String){
        
        //Initialization should fail if there is no note.
        if notes.isEmpty {
            return nil
        }
        
        //Initialize stored properties.
        self.notes = notes
        
    }
    
}

