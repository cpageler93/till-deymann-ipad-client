//
//  TillDeymannService.swift
//  TillDeymannClient
//
//  Created by Christoph on 16.05.17.
//  Copyright © 2017 Christoph Pageler. All rights reserved.
//

import Foundation
import SwiftSocket

public class TillDeymannService {
    
    public static let shared = TillDeymannService()
    
    fileprivate var tcpClient: TCPClient?
    
    public init() {
        
    }
    
    @discardableResult
    public func connect(address: String, port: Int32) -> Result {
        tcpClient = TCPClient(address: address, port: port)
        return tcpClient!.connect(timeout: 10)
    }
}

extension TillDeymannService {
    
    @discardableResult
    public func wheelhouseHouseUp() -> Result? {
        return tcpClient?.send(string: "wheelhouse:house:up")
    }
    
}
