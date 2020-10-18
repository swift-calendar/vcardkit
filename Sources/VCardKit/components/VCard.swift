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
    public var xml: [String]?
    public var fn: [VCardTyped<String>] // required
    public var n: VCardName?
    public var nickname: [VCardTyped<String>]?
    public var photo: [VCardTyped<URL>]?
    public var bday: [VCardDate]?
    public var anniversary: Date?
    public var gender: VCardGender?
    public var adr: [String]?
    public var tel: [VCardTyped<VCardTelephone>]?
    public var email: [VCardTyped<String>]?
    public var impp: [VCardTyped<URL>]?
    public var lang: [VCardTyped<String>]?
    public var tz: [VCardTyped<String>]?
    public var geo: [VCardTyped<URL>]?
    public var title: [VCardTyped<String>]?
    public var role: [VCardTyped<String>]?
    public var org: [VCardTyped<VCardOrganization>]?
    public var member: String
    public var related: String
    public var categories: VCardTyped<String>
    public var note: VCardTyped<String>
    public var sound: VCardTyped<String>
    public var uid: String
    public var url: VCardTyped<String>
    public var key: String
    public var fburl: VCardTyped<URL>
    public var caladruri: VCardTyped<URL>
    public var caluri: VCardTyped<URL>
}
