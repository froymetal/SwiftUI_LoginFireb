//
//  Localized.swift
//  Login
//
//  Created by Field Employee on 2/10/22.
//

import Foundation

internal enum Localized {
internal enum Login {
    internal static let signedIn = Localized.tr("Localizable", "SignedIn")
    internal static let signedOut = Localized.tr("Localizable", "SignedOut")
}
}

extension Localized {
    private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
        let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
        return String(format: format, locale: Locale.current,arguments: args)
    }
}

private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: BundleToken.self)
        #endif
    }()
}
