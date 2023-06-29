//
//  AutomobilePrinterSwift.swift
//  ModularizationSampleApp
//
//  Created by Bill Gestrich on 6/29/23.
//

import UIKit
import Automobile;
import NetworkKitObjc;
import NetworkKitSwift;

class AutomobilePrinterSwift: NSObject {
    
    /*
     Exercise Swift accessing Objc interface in this project
     that references *objc* symbols from framework.
     */
    func printSUV() {
        let factory = AutomobileFactory()
        let suv = factory.getSUV()
        print(suv.suvDescription())
    }
    
    /*
     Exercise Swift accessing Objc interface in this project
     that references *swift* symbols from framework.
     */
    func printHybrid() {
        let factory = AutomobileFactory()
        let hybrid = factory.getHybrid()
        print(hybrid.hybridDescription())
    }

    func printObjcNetworkState() {
        let factory = AutomobileFactory()
        print(factory.getObjcNetworkState())
    }
    
    func printSwiftNetworkState() {
        let factory = AutomobileFactory()
        //It still can't see this package symbol in
        //objective-c which is expected.
//        print(factory.getSwiftNetworkState())
        
        //But it can create it by itself
        /*
         This seems like an argument against
            * New APIs: Don't reference Swift symbols in Objc headers
            * Old APIs: Low-level libraries may need to be put in Xcode project to support Objc clients
        Package Implications
            Can depend on packages
            Project Clients cannot use Swift symbols in Objc-headers
            Can be imported by another SPM or project
         
         Framework Implications
            Can depend on packages or projects
            SPM packages cannot depend on its symbols
            Clients must be in projects, or use an injected interfaces.
         */
        let swiftNetworkState = NetworkStateSwift()
        print(swiftNetworkState.isConnected())
    }

    
}
