import VComponentKit

extension Array: VEncodable where Element: VEncodable {
    public var vEncoded: String {
        map(\.vEncoded).joined(separator: ",")
    }
}

extension Array: VPropertyEncodable where Element: VEncodable {}
