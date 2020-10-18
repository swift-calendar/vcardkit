import Foundation
import VComponentKit

public struct VCardTelephone: VPropertyEncodable {
    public let type: [TelephoneType]
    public let uri: URL

    public var parameters: [(String, [String])] {
        [("VALUE", ["uri"]), ("TYPE", type.map(\.vEncoded))]
    }

    public var vEncoded: String {
        uri.vEncoded
    }

    public enum TelephoneType: VEncodable {
        case text
        case voice
        case fax
        case cell
        case video
        case pager
        case textphone
        case other(String)

        public var vEncoded: String {
            switch self {
                case .text: return "text"
                case .voice: return "voice"
                case .fax: return "fax"
                case .cell: return "cell"
                case .video: return "video"
                case .pager: return "pager"
                case .textphone: return "textphone"
                case .other(let s): return s
            }
        }
    }

    public init(
        type: [TelephoneType] = [.voice],
        uri: URL
    ) {
        self.type = type
        self.uri = uri
    }

    public init(
        type: [TelephoneType] = [.voice],
        _ s: String
    ) {
        self.init(type: type, uri: URL(string: "tel:\(s)")!)
    }

    // Convenience constructors

    public static func text(_ s: String) -> Self {
        Self(type: [.text], s)
    }

    public static func voice(_ s: String) -> Self {
        Self(type: [.voice], s)
    }

    public static func fax(_ s: String) -> Self {
        Self(type: [.fax], s)
    }

    public static func cell(_ s: String) -> Self {
        Self(type: [.cell], s)
    }

    public static func video(_ s: String) -> Self {
        Self(type: [.video], s)
    }

    public static func pager(_ s: String) -> Self {
        Self(type: [.pager], s)
    }

    public static func textphone(_ s: String) -> Self {
        Self(type: [.textphone], s)
    }
}
