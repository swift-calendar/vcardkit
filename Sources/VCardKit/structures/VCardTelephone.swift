import Foundation
import VComponentKit

public struct VCardTelephone: VPropertyEncodable {
    public let type: [TelephoneType]
    public let url: URL

    public var parameters: [(String, [String])] {
        [("TYPE", type.map(\.vEncoded))]
    }

    public var vEncoded: String {
        url.vEncoded
    }

    public enum TelephoneType: VEncodable {
        case general(VCardType)
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
                case .general(let g): return g.vEncoded
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
        url: URL
    ) {
        self.type = type
        self.url = url
    }
}
