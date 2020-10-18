import VComponentKit

public struct VCardName: VPropertyEncodable {
    public var surnames: [String]
    public var given: [String]
    public var additional: [String]
    public var prefixes: [String]
    public var suffixes: [String]

    public var vEncoded: String {
        [surnames, given, additional, prefixes, suffixes].map { $0.joined(separator: ";") }.vEncoded
    }

    public init(
        surnames: [String] = [],
        given: [String] = [],
        additional: [String] = [],
        prefixes: [String] = [],
        suffixes: [String] = []
    ) {
        self.surnames = surnames
        self.given = given
        self.additional = additional
        self.prefixes = prefixes
        self.suffixes = suffixes
    }
}
