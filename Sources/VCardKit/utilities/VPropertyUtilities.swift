func merge(parameterCollections: [[(String, [String])]]) -> [(String, [String])] {
    Array(parameterCollections
        .map { Dictionary(uniqueKeysWithValues: $0) }
        .reduce([:]) { $0.merging($1, uniquingKeysWith: +) })
}
