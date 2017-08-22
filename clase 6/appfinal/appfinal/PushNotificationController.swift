//
//  PushNotificationController.swift
//  appfinal
//
//  Created by abe sanchez on 8/19/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit
import UserNotifications

class PushNotificationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (success, error) in
            if success{
                print("success")
            }else{
                print("error")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sendNotification(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Nofiticacion"
        content.subtitle = "from caliente"
        content.body = "todo tranqui"
        
        let imageName = "dog"
        guard let imageUrl = Bundle.main.url(forResource: imageName, withExtension: "jpg") else {
            return
        }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageUrl, options: .none)
        content.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
