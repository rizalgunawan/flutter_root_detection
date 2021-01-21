//
//  Jbdn.swift
//  flutter_root_detection
//
//  Created by Alann Maulana on 15/01/21.
//

import Foundation
import UIKit

class Jbdn: NSObject {
    static func ijb() -> Bool {
#if !(TARGET_IPHONE_SIMULATOR)
        if let file = fopen("/Applications/Cydia.app", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/Applications/FakeCarrier.app", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/Applications/Icy.app", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/Applications/IntelliScreen.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/Applications/MxTube.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/Applications/RockApp.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/Applications/SBSettings.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/Applications/WinterBoard.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/Applications/blackra1n.app", "r") {
            flcose(file)
            return true
        }

        if let file = fopen("/usr/lib/libcycript.dylib", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/Library/MobileSubstrate/MobileSubstrate.dylib", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/Library/MobileSubstrate/DynamicLibraries/Veency.plist", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/System/Library/LaunchDaemons/com.ikey.bbot.plist", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/bin/bash", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/usr/sbin/sshd", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/etc/apt", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/usr/bin/ssh", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/etc/ssh/sshd_config", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/private/var/lib/apt", "r") {
            fclose(file)
            return true
        }
        
        if let file = fopen("/private/var/lib/cydia", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/private/var/mobile/Library/SBSettings/Themes", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/private/var/stash", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/private/var/tmp/cydia.log", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/var/tmp/cydia.log", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/bin/sshd", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/libexec/sftp-server", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/libexec/ssh-keysign", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/var/cache/apt", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/var/lib/apt", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/var/lib/cydia", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/sbin/frida-server", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/bin/cycript", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/usr/local/bin/cycript", "r") {
            fclose(file)
            return true
        }

        if let file = fopen("/var/log/syslog", "r") {
            fclose(file)
            return true
        }

        let fileManager = FileManager.default;

        if fileManager.fileExists(atPath: "/Applications/Cydia.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/FakeCarrier.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/Icy.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/IntelliScreen.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/MxTube.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/RockApp.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/SBSettings.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/WinterBoard.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Applications/blackra1n.app") {
            return true
        } else if fileManager.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist") {
            return true
        } else if fileManager.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/Veency.plist") {
            return true
        } else if fileManager.fileExists(atPath: "/System/Library/LaunchDaemons/com.ikey.bbot.plist") {
            return true
        } else if fileManager.fileExists(atPath: "/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist") {
            return true
        } else if fileManager.fileExists(atPath: "/Library/MobileSubstrate/MobileSubstrate.dylib") {
            return true
        } else if fileManager.fileExists(atPath: "/usr/lib/libcycript.dylib") {
            return true
        } else if fileManager.fileExists(atPath: "/bin/bash") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/sbin/sshd") {
           return true
        } else if fileManager.fileExists(atPath: "/etc/apt") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/bin/ssh") {
           return true
        } else if fileManager.fileExists(atPath: "/etc/ssh/sshd_config") {
           return true
        } else if fileManager.fileExists(atPath: "/private/var/lib/apt") {
           return true
        } else if fileManager.fileExists(atPath: "/private/var/lib/cydia") {
           return true
        } else if fileManager.fileExists(atPath: "/private/var/mobile/Library/SBSettings/Themes") {
           return true
        } else if fileManager.fileExists(atPath: "/private/var/stash") {
           return true
        } else if fileManager.fileExists(atPath: "/private/var/tmp/cydia.log") {
           return true
        } else if fileManager.fileExists(atPath: "/var/tmp/cydia.log") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/bin/sshd") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/libexec/sftp-server") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/libexec/ssh-keysign") {
           return true
        } else if fileManager.fileExists(atPath: "/var/cache/apt") {
           return true
        } else if fileManager.fileExists(atPath: "/var/lib/apt") {
           return true
        } else if fileManager.fileExists(atPath: "/var/lib/cydia") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/sbin/frida-server") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/bin/cycript") {
           return true
        } else if fileManager.fileExists(atPath: "/usr/local/bin/cycript") {
           return true
        } else if fileManager.fileExists(atPath: "/var/log/syslog") {
           return true
        }
        
        // Check if the app can access outside of its sandbox
        let string: String = ".";
        
        do {
            try string.write(toFile: "/private/jailbreak.txt", atomically: true, encoding: String.Encoding.utf8)
            try fileManager.removeItem(atPath: "/private/jailbreak.txt")
        } catch _ {
            return true
        }
        
        // Check if the app can open a Cydia's URL scheme
        if let url = URL(string: "cydia://package/com.example.package"), UIApplication.shared.canOpenURL(url) {
            return true
        }
#endif
        return false
    }
}
