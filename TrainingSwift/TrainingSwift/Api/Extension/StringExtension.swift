//
//  StringExtension.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/22/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation
import UIKit

extension String {

    var lenght: Int {
        get {
            return self.characters.count
        }
    }

    func containsNumbers() -> Bool {
        let numberRegEx  = ".*[0-9]+.*"
        let testCase     = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
        return testCase.evaluate(with: self)
    }

    /**
     * Auto return two space if string is empty => to ignore auto size cell table
     */
    func minLenght2() -> String {
        if isEmpty {
            return "  "
        }
        return self
    }
    /*
     func getDateUTCFromString() -> Date? {
     let formatter = DateFormatter()
     formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
     formatter.locale = Locale(identifier: "en_US_POSIX")
     return formatter.date(from: self)
     }
     */
    func getDateUTCFromString(format: String = "MM dd, yyyy") -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(identifier: "UTC")
        formatter.locale = Locale(identifier: "en-US")
        return formatter.date(from: self)
    }

    func stringFromIndex(_ index: Int) -> String {
        if index >= self.lenght {
            return ""
        }
        return (self as NSString).substring(with: NSRange(location: index, length: self.lenght - index))
    }

    func stringToIndex(index: Int) -> String {
        return self.substring(to: self.characters.index(self.startIndex, offsetBy: index))
    }
    
    /*
     Get string localized in Locazable file.
     */
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }

    /**
     * Calulate size for text. 
     * boundSize: This is max bound text can display in
     */
    func sizeWithBoundSize(boundSize: CGSize,
                           option: NSStringDrawingOptions,
                           lineBreakMode: NSLineBreakMode = NSLineBreakMode.byTruncatingTail,
                           font: UIFont) -> CGSize {
        if self.isEmpty {
            return CGSize.zero
        }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = lineBreakMode
        return (self as NSString).boundingRect(with: boundSize,
                                               options: option,
                                               attributes: [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle],
                                               context: nil).size
    }

    /**
     * Get date string from date with specify format (yyyy/MM/dd ....)
     */
    static func string(fromDate: Date, format: String) -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = format
        return dateFormater.string(from: fromDate)
    }

    /**
     * Generate udid string. This value will unique within current devive.
     * format like this: AAAA-BBBB-CCCC-DDDD....
     */
    static func newUdid() -> String {
        if let aid = CFUUIDCreate(nil) {
            return CFUUIDCreateString(nil, aid) as String
        }
        return ""
    }

    /**
     * Return path of document directory in app folder.
     */
    static func documentDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(
            .documentDirectory,
            .userDomainMask,
            true)
        return paths.first ?? ""
    }

    /**
     * Return the normal log file
     * This file will log the status of DataMan System such as : conntect, disconnect,...
     */
    static func normalLogFilePath() -> String {
        let filename = "normalLog.csv"
        return String.documentDirectoryPath() + "/" + filename
    }

    /**
     * Return Data log file path
     */
    static func dataLogFilePath() -> String {
        let filename = "dataLog.csv"
        return String.documentDirectoryPath() + "/" + filename
    }

    /**
     * Return error log file path
     */
    static func errorLogFilePath() -> String {
        let filename = "error.csv"
        return String.documentDirectoryPath() + "/" + filename
    }

    func double() -> Double {
        return Double(self) ?? 0
    }

    func trim() -> String {
        let str = (self as NSString).replacingOccurrences(of: "\u{00a0}", with: "")
        return str.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    func mosaicAmountSpecify(largefont: UIFont = UIFont.boldSystemFont(ofSize: 30),
                             smallFont: UIFont = UIFont.boldSystemFont(ofSize: 14)) -> NSAttributedString {
        let attributes = [NSFontAttributeName: largefont,
                          NSForegroundColorAttributeName: UIColor.white]
        let moneyText = self.trim()
        let attributesText = NSMutableAttributedString(string: moneyText,
                                                       attributes: attributes)
        let range = (moneyText as NSString).range(of: ".")
        if  range.location != NSNotFound {
            attributesText.addAttributes(attributes, range: range)
        }
        let attributes2 = [NSFontAttributeName: smallFont,
                          NSForegroundColorAttributeName: UIColor.white]
        if range.location < moneyText.lenght {
            let subRange = NSRange(location: range.location, length: moneyText.lenght - range.location)

            attributesText.addAttributes(attributes2, range: subRange)
        }
        let range$ = (moneyText as NSString).range(of: "$")
        if  range$.location != NSNotFound {
            attributesText.addAttributes(attributes2, range: range$)
        }
        return attributesText
    }

    func getUserIdFromActor() -> Int {
        let array = (self as NSString).components(separatedBy: "_")
        if let last = array.last {
            return Int(last) ?? -1
        }
        return -1
    }

    func attributeText(textColor: UIColor, font: UIFont) -> NSAttributedString {
        let attributes = [NSFontAttributeName: font,
                          NSForegroundColorAttributeName: textColor]
        let attributesText = NSMutableAttributedString(string: self,
                                                       attributes: attributes)
        return attributesText
    }

    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }

    func isValidPass(testStr: String) -> Bool {

        let emailRegEx = "^.*(?=.{6,})(?=.*[a-zA-Z])[a-zA-Z0-9]+$"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }

    func isValidPasscode(testStr: String) -> Bool {

        let emailRegEx = "^.*(?=.{,4})(?=.*)[0-9]+$"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }

    func defaultLogo() -> UIImage? {
        var iconname = ""
        let stockname = self.trim().lowercased()
        if stockname.lenght > 0 {
            iconname = stockname.stringToIndex(index: 1)
        }
        return UIImage(named: iconname.lowercased())
    }

    static func appVersion() -> String {
        if let info = Bundle.main.infoDictionary {
            return (info["CFBundleShortVersionString"] as? String) ?? ""
        }
        return ""
    }

    func imageFromBase64() -> UIImage? {
        if let data = Data(base64Encoded: self) {
            if let img = UIImage(data: data) {
                return img
            }
        }
        return nil
    }
}
