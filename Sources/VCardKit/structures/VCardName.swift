import VComponentKit

public struct VCardName: VPropertyEncodable {
    public var surname: [String]
    public var given: [String]
    public var additional: [String]
    public var prefixes: [String]
    public var suffixes: [String]

    public var vEncoded: String {
        [surname, given, additional, prefixes, suffixes].map { $0.joined(separator: ";") }.vEncoded
    }

    public init(
        surname: [String] = [],
        given: [String] = [],
        additional: [String] = [],
        prefixes: [String] = [],
        suffixes: [String] = []
    ) {
        self.surname = surname
        self.given = given
        self.additional = additional
        self.prefixes = prefixes
        self.suffixes = suffixes
    }
}
