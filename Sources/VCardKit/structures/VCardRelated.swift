import Foundation
import VComponentKit

public struct VCardRelated: VPropertyEncodable {
    public var value: RelatedValue
    public var type: RelatedType

    public var parameters: [(String, [String])] {
        merge(parameterCollections: [value.parameters, [("TYPE", [type.vEncoded])]])
    }
    public var vEncoded: String {
        value.vEncoded
    }

    public enum RelatedValue: VPropertyEncodable {
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

    public enum RelatedType: String, VEncodable {
        case contact
        case acquaintance
        case friend
        case met
        case coWorker = "co-worker"
        case colleague
        case neighbor
        case child
        case parent
        case sibling
        case spouse
        case kin
        case muse
        case crush
        case date
        case sweetheart
        case me
        case agent
        case emergency

        public var vEncoded: String { rawValue }
    }

    public init(
        value: RelatedValue,
        type: RelatedType
    ) {
        self.value = value
        self.type = type
    }
}
