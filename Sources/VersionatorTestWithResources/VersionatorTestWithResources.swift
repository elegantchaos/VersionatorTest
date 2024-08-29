// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

@main struct VersionatorTest {
  static func main() {
    print("Current build is \(VersionatorVersion.build)")
    print("Current commit is \(VersionatorVersion.commit)")
    print("Git describe is \(VersionatorVersion.git)")

    if let info = Bundle.module.infoDictionary {
      print("\nInfo Dictionary:")
      for item in info {
        print("  \(item.key): \(item.value)")
      }
    }
  }
}
