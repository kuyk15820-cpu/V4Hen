//
//  SettingsViewPresenter.swift
//
//  Created by lunginspector on 1/11/26.
//

import SwiftUI
import UIKit

// เพิ่ม @objc(ชื่อคลาส) เพื่อให้ฝั่ง Objective-C มองเห็นชื่อนี้ตรงๆ โดยไม่ต้องมีชื่อ Module นำหน้า
@objc(SettingsViewPresenter)
class SettingsViewPresenter: NSObject {
    
    @objc class func presentSettingsFromViewController(_ viewController: UIViewController) {
        let settingsView = SettingsView()
        let hostingController = UIHostingController(rootView: settingsView)
        
        // กำหนดสไตล์การเปิดหน้ารายละเอียดแบบ Sheet สไลด์ขึ้น
        hostingController.modalPresentationStyle = .pageSheet
        
        // สั่งให้หน้าจอเดิมพรีเซนต์ UIHostingController ที่ห่อ SettingsView ไว้
        viewController.present(hostingController, animated: true, completion: nil)
    }
}
