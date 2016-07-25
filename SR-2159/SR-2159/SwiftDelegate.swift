//
//  SwiftDelegate.swift
//  SR-2159
//
//  Created by Alsey Coleman Miller on 7/24/16.
//  Copyright © 2016 ColemanCDA. All rights reserved.
//

import Foundation
import CoreBluetooth

public final class SwiftDelegate: NSObject, CBCentralManagerDelegate {
    
    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        
        print("New State \(central.state)")
    }
    
    @objc(centralManager:didFailToConnectPeripheral:error:)
    public func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Swift.Error?) {
        
        print("Did fail to connect to peripheral \(peripheral.identifier.uuidString) (\(error!))")
    }
}
