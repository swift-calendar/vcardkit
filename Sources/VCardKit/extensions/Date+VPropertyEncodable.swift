import Foundation
import VComponentKit

extension Date: VPropertyEncodable {
    public var vEncoded: String {
        VCardDate(date: self).vEncoded
    }
}
