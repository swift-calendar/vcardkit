import Foundation
import VComponentKit

public struct VCardRelated: VPropertyEncodable {
    public var value: VCardURIOrText
    public var type: RelatedType

    public var parameters: [(String, [String])] {
        merge(parameterCollections: [value.parameters, [("TYPE", [type.vEncoded])]])
    }
    public var vEncoded: String {
        value.vEncoded
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
        value: VCardURIOrText,
        type: RelatedType
    ) {
        self.value = value
        self.type = type
    }
}
