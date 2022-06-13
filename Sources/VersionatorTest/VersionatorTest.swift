// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

@main struct VersionatorTest {
    static func main() {
        print("Current build is \(CurrentVersion.build)")
        print("Current commit is \(CurrentVersion.commit)")
        print("Git describe is \(CurrentVersion.git)")

        if let info = Bundle.module.infoDictionary {
            print("\nInfo Dictionary is:")
            print(info)
        }
    }
}
