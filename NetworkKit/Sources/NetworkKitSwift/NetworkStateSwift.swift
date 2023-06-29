import Foundation;

@objcMembers public class NetworkStateSwift: NSObject {
    public private(set) var text = "Hello, World!"

    public override init() {
    }
    
    public func isConnected() -> Bool {
        return true
    }
}
