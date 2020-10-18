import VComponentKit

public struct VCardOrganization: VPropertyEncodable {
    public let name: String
    public let units: [String]

    private var segments: [String] {
        [name] + units
    }
    public var vEncoded: String {
        segments.joined(separator: ";")
    }

    public init(name: String, units: [String] = []) {
        self.name = name
        self.units = units
    }
}
