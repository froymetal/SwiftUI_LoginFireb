//
//  Localized.swift
//  Login
//
//  Created by Froy on 2/10/22.
//

import Foundation

internal enum Localized {
    internal enum Login {
        internal static let signedIn = Localized.tr("Localizable", "login.SignedIn")
        internal static let signedOut = Localized.tr("Localizable", "login.SignedOut")
    }

    internal enum SignIn {
        internal static let title = Localized.tr("Localizable", "signIn.Title")
        internal static let email = Localized.tr("Localizable", "signIn.Email")
        internal static let pass = Localized.tr("Localizable", "signIn.Pass")
        internal static let signEmail = Localized.tr("Localizable", "signIn.SignEmail")
        internal static let create = Localized.tr("Localizable", "signIn.Create")
    }

    internal enum SignUp {
        internal static let title = Localized.tr("Localizable", "signUp.Title")
        internal static let email = Localized.tr("Localizable", "signUp.Email")
        internal static let pass = Localized.tr("Localizable", "signUp.Pass")
        internal static let create = Localized.tr("Localizable", "signUp.Create")
    }

    internal enum FacebookLogin {
        internal static let fbSignIn = Localized.tr("Localizable", "fb.SignIn")
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
