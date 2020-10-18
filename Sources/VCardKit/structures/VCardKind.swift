import VComponentKit

public enum VCardKind: VPropertyEncodable {
    case individual
    case group
    case org
    case location
    case other(String)

    public var vEncoded: String {
        switch self {
            case .individual: return "individual"
            case .group: return "group"
            case .org: return "org"
            case .location: return "location"
            case .other(let kind): return kind
        }
    }
}
