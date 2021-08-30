import Foundation
import Combine

public protocol ReactiveCompatible {
    associatedtype Base

    // swiftlint:disable:next identifier_name
    var r: Reactive<Base> { get }
}

extension ReactiveCompatible {
    // swiftlint:disable:next identifier_name
    public var r: Reactive<Self> {
        Reactive(self)
    }
}
