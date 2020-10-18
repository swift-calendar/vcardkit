import VComponentKit

public struct VCardGender: VPropertyEncodable {
    public var sex: VCardSex?
    public var text: String?

    public var vEncoded: String {
        [sex?.vEncoded ?? "", text].compactMap { $0 }.joined(separator: ";")
    }

    public init(sex: VCardSex? = nil, text: String? = nil) {
        self.sex = sex
        self.text = text
    }
}
