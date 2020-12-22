//
//  String.swift
//  BaseAppMulti
//
//  Created by Chaitanya Soni on 10/07/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation

@available(iOS 11.0, *)
extension String {
    @inlinable public var isntEmpty: Bool { return !isEmpty }
    
    public var isValidEmail: Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }
    public var isValidPhone: Bool {
//        let regex = "^09[0-9'@s]{9,9}$"
        let regex = "^[6-9][0-9]{9}$"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }
    public var isPhoneNumber: Bool {

//        let charcter  = NSCharacterSet(charactersIn: "+0123456789").inverted
        let set = CharacterSet(charactersIn: "+0123456789").inverted
        var filtered:String!
        let inputString:[String] = self.components(separatedBy: set)
        filtered = inputString.joined(separator: "")
        return  self == filtered

    }
    public func toDateString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale(identifier: "en_US_POSIX")
        var date = formatter.date(from: self)// ?? Date()
        
        let formatter2 = DateFormatter()
        formatter2.locale = Locale(identifier: "en_US_POSIX")
        formatter2.dateFormat = format
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        date = formatter.date(from: self) ?? Date()
        
        formatter.dateFormat = "MM-dd-yyyy HH:mm:ss"
        date = formatter.date(from: self) ?? Date()
        if date != nil {
            return formatter2.string(from: date ?? Date())//date
        }else {
            formatter.dateFormat = "yyyy-dd-MM HH:mm:ss"
            date = formatter.date(from: self) ?? Date()
            return formatter2.string(from: date ?? Date())//date
        }
		
	}
    func convertToDictionary() -> [String: Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
