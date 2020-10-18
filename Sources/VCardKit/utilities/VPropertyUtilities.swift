private struct Pair<I>: Comparable & Hashable where I: Comparable & Hashable {
    let x: I
    let y: I

    static func <(lhs: Self, rhs: Self) -> Bool {
        [lhs.x, lhs.y].lexicographicallyPrecedes([rhs.x, rhs.y])
    }
}

private struct Indexed<I, T>: Hashable where I: Hashable, T: Hashable {
    let index: I
    let value: T

    static func ==(lhs: Self, rhs: Self) -> Bool {
        lhs.value == rhs.value
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
}

func merge(parameterCollections: [[(String, [String])]]) -> [(String, [String])] {
    parameterCollections
        .enumerated()
        .map { (x, d) in Dictionary(uniqueKeysWithValues: d
            .enumerated()
            .map { (y, t) in (Indexed(index: Pair(x: x, y: y), value: t.0), t.1) }) }
        .reduce([:]) { $0.merging($1, uniquingKeysWith: +) }
        .sorted { $0.key.index < $1.key.index }
        .map { (i, v) in (i.value, v) }
}
