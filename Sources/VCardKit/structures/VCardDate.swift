import Foundation
import VComponentKit

/// A date or date/time for use in vCards.
public struct VCardDate: VPropertyEncodable {
    public var date: Date
    public var ignoreTime: Bool

    public var vEncoded: String {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyyMMdd\(ignoreTime ? "" : "'T'HHmmss'Z'")"
        return formatter.string(from: date)
    }

    public init(date: Date, ignoreTime: Bool = false) {
        self.date = date
        self.ignoreTime = ignoreTime
    }

    public static func dateOnly(_ date: Date) -> VCardDate {
        VCardDate(date: date, ignoreTime: true)
    }

    public static func dateTime(_ date: Date) -> VCardDate {
        VCardDate(date: date, ignoreTime: false)
    }
}
