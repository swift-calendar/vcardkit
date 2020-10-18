import VComponentKit

public struct VCardAddress: VPropertyEncodable {
    public var postOfficeBox: String
    public var extendedAddress: String
    public var streetAddress: String
    public var locality: String // e.g. city
    public var region: String // e.g. state
    public var country: String

    public var vEncoded: String {
        [postOfficeBox, extendedAddress, streetAddress, locality, region, country].joined(separator: ";")
    }

    public init(
        postOfficeBox: String = "",
        extendedAddress: String = "",
        streetAddress: String = "",
        locality: String = "", // e.g. city
        region: String = "", // e.g. state
        country: String = ""
    ) {
        self.postOfficeBox = postOfficeBox
        self.extendedAddress = extendedAddress
        self.streetAddress = streetAddress
        self.locality = locality
        self.region = region
        self.country = country
    }
}
