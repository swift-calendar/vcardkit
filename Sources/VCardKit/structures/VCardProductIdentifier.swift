import VComponentKit

/// The identifier for the product that created the
/// vCard object.
///
/// See https://tools.ietf.org/html/rfc6350#section-6.7.3
public struct VCardProductIdentifier: VPropertyEncodable {
    public let segments: [String]

    public var vEncoded: String {
        "-\(segments.map { "//\($0)" }.joined())"
    }

    public init(segments: [String] = ["swift-calendar", "vcardkit", "EN"]) {
        self.segments = segments
    }
}
