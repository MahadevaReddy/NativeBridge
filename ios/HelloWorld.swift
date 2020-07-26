//
//  HelloWorld.swift
//  NativeBridge
//
//  Created by Mahadeva Reddy Markiri on 26/07/20.
//

import Foundation
import UIKit
@objc(HelloWorld)

class HellWorld: NSObject, RCTBridgeModule{
  
  static func moduleName() -> String! {
    return "HelloWorld";
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true;
  }
  @objc
  func  ShowMessage(_ message:NSString, duration:Double) -> Void {
    let alert = UIAlertController(title: nil, message: message as String, preferredStyle: .alert);
    alert.view.backgroundColor = .black
    alert.view.alpha = 0.5
    alert.view.layer.cornerRadius = 14
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated: true, completion: nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now(), execute: {
      alert.dismiss(animated: true, completion: nil);
    })
  }
}
