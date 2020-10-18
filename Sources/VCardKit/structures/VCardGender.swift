import VComponentKit

public struct VCardGender: VPropertyEncodable {
    public static var male: VCardGender = VCardGender(sex: .male)
    public static var female: VCardGender = VCardGender(sex: .female)
    public static var other: VCardGender = VCardGender(sex: .other)
    public static var none: VCardGender = VCardGender(sex: VCardSex.none)
    public static var unknown: VCardGender = VCardGender(sex: .unknown)

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
