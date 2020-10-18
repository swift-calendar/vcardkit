public struct VCardName: VPropertyEncodable {
    public var surnames: [String]
    public var given: [String]
    public var additional: [String]
    public var prefixes: [String]
    public var suffixes: [String]

    public init(
        surnames: [String],
        given: [String],
        additional: [String],
        prefixes: [String],
        suffixes: [String]
    ) {
        self.surnames = surnames
        self.given = given
        self.additional = additional
        self.prefixes = prefixes
        self.suffixes = suffixes
    }
}
