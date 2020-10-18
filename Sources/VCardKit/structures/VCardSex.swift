import VComponentKit

public enum VCardSex: String, VPropertyEncodable {
    case male = "M"
    case female = "F"
    case other = "O"
    case none = "N"
    case unknown = "U"

    public var vEncoded: String { rawValue }
}
