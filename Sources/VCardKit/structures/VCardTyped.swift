import VComponentKit

@propertyWrapper
public struct VCardTyped<T>: VPropertyEncodable where T: VPropertyEncodable {
    public var wrappedValue: T
    public var type: VCardType?

    public var parameters: [(String, [String])] {
        merge(parameterCollections: [type.map { [("TYPE", [$0.vEncoded])] } ?? [], wrappedValue.parameters])
    }

    public var vEncoded: String {
        wrappedValue.vEncoded
    }

    public init(wrappedValue: T, type: VCardType? = nil) {
        self.wrappedValue = wrappedValue
        self.type = type
    }

    // Convenience constructors

    public static func just(_ wrappedValue: T) -> VCardTyped<T> {
        VCardTyped(wrappedValue: wrappedValue, type: nil)
    }

    public static func home(_ wrappedValue: T) -> VCardTyped<T> {
        VCardTyped(wrappedValue: wrappedValue, type: .home)
    }

    public static func work(_ wrappedValue: T) -> VCardTyped<T> {
        VCardTyped(wrappedValue: wrappedValue, type: .work)
    }
}
