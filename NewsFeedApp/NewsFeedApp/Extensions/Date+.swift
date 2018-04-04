//
//  Date+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 4.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

enum DateFormat: String {
    case dayMonthYear = "dd. MM. yyyy"
    case time = "HH:mm"
    case server = "yyyy-MM-dd'T'HH:mm:ss"
    case dayMonthYearTime = "dd. MM. yy HH:mm"
    case monthYear = "MM/yy"
}

extension Date {
    func toString(with format: DateFormat) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }

    func addDays(_ daysToAdd: Int) -> Date {
        let daysInSeconds: TimeInterval = Double(daysToAdd) * 60 * 60 * 24
        return self.addingTimeInterval(daysInSeconds)
    }

    func addMonths(_ months: Int) -> Date {
        let seconds: TimeInterval = Double(months * 30) * 60 * 60 * 24
        return self.addingTimeInterval(seconds)
    }
}
