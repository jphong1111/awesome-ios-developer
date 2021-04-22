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
    private let mailController: MFMailComposeViewController
    
    private weak var messageDelegate: MFMessageComposeViewControllerDelegate?
    private let messageController: MFMessageComposeViewController
    
    init(presentingController controller: NSObject, mailDelegate: MFMailComposeViewControllerDelegate, messageDelegate: MFMessageComposeViewControllerDelegate) {
        self.mailDelegate = mailDelegate
        self.mailController = MFMailComposeViewController()
        self.messageDelegate = messageDelegate
        self.messageController = MFMessageComposeViewController()
            
        super.init()
        messageController.messageComposeDelegate = self
        mailController.mailComposeDelegate = self
    }
    
    func sendEmail(feedback: MailFeedback) -> MFMailComposeViewController {
        if MFMailComposeViewController.canSendMail() {
            self.mailDelegate = self
            mailController.setToRecipients(feedback.recipients)
            mailController.setSubject(feedback.subject)
            mailController.setMessageBody(feedback.body, isHTML: false)
        }
        return mailController
    }
    
    func sendMessage(feedback: MessageFeedBack) -> MFMessageComposeViewController {
        if MFMessageComposeViewController.canSendText() {
            self.mailDelegate = self
            messageController.recipients = feedback.recipients
            messageController.body = feedback.body
        }
        return messageController
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
