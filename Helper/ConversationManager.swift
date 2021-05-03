//
//  ConversationManager.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import Foundation
import MessageUI
import UIKit

struct MailFeedback {
    let recipients: [String]
    let subject: String
    let body: String
}

struct MessageFeedBack {
    let recipients: [String]
    let body: String
}

class ConversationManager: NSObject {
    
    private weak var mailDelegate: MFMailComposeViewControllerDelegate?
    private var mailController: MFMailComposeViewController?
    
    private weak var messageDelegate: MFMessageComposeViewControllerDelegate?
    private var messageController: MFMessageComposeViewController?
    private var controller = UIViewController()
    
    // For Mail,Message method
    init(presentingController controller: NSObject, mailDelegate: MFMailComposeViewControllerDelegate, messageDelegate: MFMessageComposeViewControllerDelegate, viewController: UIViewController) {
        self.mailDelegate = mailDelegate
        self.mailController = MFMailComposeViewController()
        self.messageController = MFMessageComposeViewController()
        self.messageDelegate = messageDelegate
        self.controller = viewController
        super.init()
        mailController?.mailComposeDelegate = self
    }
    
    // For Mail method
     init(presentingController controller: NSObject, mailDelegate: MFMailComposeViewControllerDelegate, viewController: UIViewController) {
        self.mailDelegate = mailDelegate
        self.mailController = MFMailComposeViewController()
        self.controller = viewController
        super.init()
        self.mailController?.mailComposeDelegate = self
    }
    
    // For Message method
    init(presentingController controller: NSObject, messageDelegate: MFMessageComposeViewControllerDelegate, viewController: UIViewController) {
        self.messageController = MFMessageComposeViewController()
        self.messageDelegate = messageDelegate
        self.controller = viewController
        super.init()
        self.messageController?.messageComposeDelegate = self
    }
    // For call method
    init(presentingController controller: NSObject, viewController: UIViewController) {
        self.controller = viewController
        super.init()
    }
    
    func sendEmail(feedback: MailFeedback) {
        if MFMailComposeViewController.canSendMail() {
            self.mailDelegate = self
            mailController?.setToRecipients(feedback.recipients)
            mailController?.setSubject(feedback.subject)
            mailController?.setMessageBody(feedback.body, isHTML: false)
        }
        controller.present(mailController ?? UIViewController(), animated: true)
    }
    
    func sendMessage(feedback: MessageFeedBack) {
        if MFMessageComposeViewController.canSendText() {
            self.mailDelegate = self
            messageController?.recipients = feedback.recipients
            messageController?.body = feedback.body
        }
        controller.present(messageController ?? UIViewController(), animated: true)
    }
    
    func makeCall(number: String) {
        let number = number
        guard let url = URL(string: "tel://\(number)") else { return }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
extension ConversationManager: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}

extension ConversationManager: MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
}
