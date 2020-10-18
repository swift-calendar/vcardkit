import Foundation
import VComponentKit

public enum VCardURIOrText: VPropertyEncodable {
    case uri(URL)
    case text(String)

    public var parameters: [(String, [String])] {
        switch self {
            case .text(_): return [("VALUE", ["TEXT"])]
            default: return []
        }
    }
    public var vEncoded: String {
        switch self {
            case .uri(let uri): return uri.vEncoded
            case .text(let t): return t.vEncoded
        }
    }
}
