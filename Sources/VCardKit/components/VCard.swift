import Foundation
import VComponentKit

/// An electronic business card.
public struct VCard: VComponent {
    public let component = "VCARD"

    /// The version of the vCard specification used to
    /// format this vCard.
    ///
    /// See https://tools.ietf.org/html/rfc6350#section-6.7.9
    public let version = "4.0"

    public var prodid: VCardProductIdentifier

    // See https://tools.ietf.org/html/rfc6350#section-10.3.1
    // for a list of defined properties

    public var source: URL?
    public var kind: VCardKind?
    public var xml: [String]
    public var fn: [String] // 1 or more required
    public var n: VCardName?
    public var nickname: [String]
    public var photo: [URL]
    public var bday: [VCardDate]
    public var anniversary: Date?
    public var gender: VCardGender?
    public var adr: [String]
    public var tel: String
    public var email: String
    public var impp: String
    public var lang: String
    public var tz: String
    public var geo: String
    public var title: String
    public var role: String
    public var org: String
    public var member: String
    public var related: String
    public var categories: String
    public var note: String
    public var sound: String
    public var uid: String
    public var url: String
    public var key: String
    public var fburl: URL
    public var caladruri: URL
    public var caluri: URL
}
