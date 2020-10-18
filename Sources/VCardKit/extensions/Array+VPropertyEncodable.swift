import VComponentKit

extension Array: VPropertyEncodable where Element: StringProtocol {
    public var vEncoded: String {
        joined(separator: ",")
    }
}
