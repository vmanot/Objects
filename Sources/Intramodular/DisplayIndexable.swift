//
// Copyright (c) Vatsal Manot
//

import FoundationX
import Swift

public protocol DisplayIndexable {
    var displayName: String { get }
    var displayTerms: [DisplayTerm] { get }
}
