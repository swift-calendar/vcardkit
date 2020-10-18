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

    public var prodid: VCardProductIdentifier?

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
    public var member: [URL]?
    public var related: [VCardRelated]?
    public var categories: [VCardTyped<String>]?
    public var note: [VCardTyped<String>]?
    public var rev: Date?
    public var sound: [VCardTyped<URL>]?
    public var uid: URL?
    public var url: [VCardTyped<URL>]?
    public var key: [URL]?
    public var fburl: [VCardTyped<URL>]?
    public var caladruri: [VCardTyped<URL>]?
    public var caluri: [VCardTyped<URL>]?

    public var properties: [VContentLine?] {
        [
            .line("VERSION", version),
            .line("PRODID", prodid),
            .line("SOURCE", source),
            .line("KIND", kind),
            .line("XML", xml),
            .line("FN", fn),
            .line("N", n),
            .line("NICKNAME", nickname),
            .line("PHOTO", photo),
            .line("BDAY", bday),
            .line("ANNIVERSARY", anniversary),
            .line("GENDER", gender),
            .line("ADR", adr),
            .line("TEL", tel),
            .line("EMAIL", email),
            .line("IMPP", impp),
            .line("LANG", lang),
            .line("TZ", tz),
            .line("GEO", geo),
            .line("TITLE", title),
            .line("ROLE", role),
            // TODO
            // .line("LOGO", logo),
            .line("ORG", org),
            .line("MEMBER", member),
            .line("RELATED", related),
            .line("CATEGORIES", categories),
            .line("NOTE", note),
            .line("REV", rev),
            .line("SOUND", sound),
            .line("UID", uid),
            .line("URL", url),
            .line("KEY", key),
            .line("FBURL", fburl),
            .line("CALADRURI", caladruri),
            .line("CALURI", caluri)
        ]
    }

    public init(
        prodid: VCardProductIdentifier? = VCardProductIdentifier(),
        source: URL? = nil,
        kind: VCardKind? = nil,
        xml: [String]? = nil,
        fn: [VCardTyped<String>], // required
        n: VCardName? = nil,
        nickname: [VCardTyped<String>]? = nil,
        photo: [VCardTyped<URL>]? = nil,
        bday: [VCardDate]? = nil,
        anniversary: Date? = nil,
        gender: VCardGender? = nil,
        adr: [String]? = nil,
        tel: [VCardTyped<VCardTelephone>]? = nil,
        email: [VCardTyped<String>]? = nil,
        impp: [VCardTyped<URL>]? = nil,
        lang: [VCardTyped<String>]? = nil,
        tz: [VCardTyped<String>]? = nil,
        geo: [VCardTyped<URL>]? = nil,
        title: [VCardTyped<String>]? = nil,
        role: [VCardTyped<String>]? = nil,
        org: [VCardTyped<VCardOrganization>]? = nil,
        member: [URL]? = nil,
        related: [VCardRelated]? = nil,
        categories: [VCardTyped<String>]? = nil,
        note: [VCardTyped<String>]? = nil,
        rev: Date? = Date(),
        sound: [VCardTyped<URL>]? = nil,
        uid: URL? = URL(string: "urn:uuid:\(UUID().uuidString)"),
        url: [VCardTyped<URL>]? = nil,
        key: [URL]? = nil,
        fburl: [VCardTyped<URL>]? = nil,
        caladruri: [VCardTyped<URL>]? = nil,
        caluri: [VCardTyped<URL>]? = nil
    ) {
        self.prodid = prodid
        self.source = source
        self.kind = kind
        self.xml = xml
        self.fn = fn
        self.n = n
        self.nickname = nickname
        self.photo = photo
        self.bday = bday
        self.anniversary = anniversary
        self.gender = gender
        self.adr = adr
        self.tel = tel
        self.email = email
        self.impp = impp
        self.lang = lang
        self.tz = tz
        self.geo = geo
        self.title = title
        self.role = role
        self.org = org
        self.member = member
        self.related = related
        self.categories = categories
        self.note = note
        self.rev = rev
        self.sound = sound
        self.uid = uid
        self.url = url
        self.key = key
        self.fburl = fburl
        self.caladruri = caladruri
        self.caluri = caluri
    }
}
