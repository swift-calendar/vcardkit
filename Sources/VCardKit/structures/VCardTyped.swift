import VComponentKit

@propertyWrapper
public struct VCardTyped<T>: VPropertyEncodable where T: VPropertyEncodable {
    public var wrappedValue: T
    public var type: VCardType

    public var parameters: [(String, [String])] {
        merge([[("TYPE", [type.vEncoded])], wrappedValue.parameters])
    }

    public var vEncoded: String {
        wrappedValue.vEncoded
    }

    public init(wrappedValue: T, type: VCardType) {
        self.wrappedValue = wrappedValue
        self.type = type
    }

    public static func home(_ wrappedValue: T) -> VCardTyped<T> {
        VCardTyped(wrappedValue: wrappedValue, type: .home)
    }

    public static func work(_ wrappedValue: T) -> VCardTyped<T> {
        VCardTyped(wrappedValue: wrappedValue, type: .work)
    }
}

fileprivate func merge(_ parameterCollections: [[(String, [String])]]) -> [(String, [String])] {
    Array(parameterCollections
        .map { Dictionary(uniqueKeysWithValues: $0) }
        .reduce([:]) { $0.merging($1, uniquingKeysWith: +) })
}
