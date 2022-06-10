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

        if let url = Bundle.module.url(forResource: "Info", withExtension: "plist") {
            print(url)
            
            var format: PropertyListSerialization.PropertyListFormat = .xml
            if let data = try? Data(contentsOf: url), let info = try? PropertyListSerialization.propertyList(from: data, format: &format) {
                print(info)
            }
        }
    }
}
