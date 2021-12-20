//
//  AuthManager.swift
//  Ozon_2.0
//
//  Created by Михеева Александра Германовна on 20.12.2021.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "312809"
        static let clientSecret = "c91a8dee-7606-4976-ae6d-dca7ffe04b77"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefrehToken: Bool {
        return false
    }
}
