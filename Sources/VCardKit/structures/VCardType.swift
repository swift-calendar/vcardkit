import VComponentKit

public enum VCardType: VEncodable {
    case work
    case home
    case other(String)

    public var vEncoded: String {
        switch self {
            case .work: return "work"
            case .home: return "home"
            case .other(let s): return s
        }
    }
}
