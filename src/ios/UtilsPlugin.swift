import Foundation

@objc(UtilsPlugin) class UtilsPlugin : CDVPlugin {
    
    func setUserId(_ command: CDVInvokedUrlCommand) {
        let userId = command.arguments[0] as! String
        
        let pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            // status: CDVCommandStatus_ERROR,
            messageAs: userId)
        
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }
    
    
}
