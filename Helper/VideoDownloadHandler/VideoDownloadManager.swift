//
//  VideoDownloadManager.swift
//  DispatchDemoApp
//
//  Created by JungpyoHong on 4/29/21.
//
import Foundation
import PhotosUI

struct VideoDownloadManager {
    
    func downloadVideoLinkAndCreateAsset(_ videoLink: String) {

        guard let videoURL = URL(string: videoLink) else { return }
        guard let documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        if !FileManager.default.fileExists(atPath: documentsDirectoryURL.appendingPathComponent(videoURL.lastPathComponent).path) {
            URLSession.shared.downloadTask(with: videoURL) { (location, response, error) -> Void in
                guard let location = location else { return }
                let destinationURL = documentsDirectoryURL.appendingPathComponent(response?.suggestedFilename ?? videoURL.lastPathComponent)
                do {
                    try FileManager.default.moveItem(at: location, to: destinationURL)
                    PHPhotoLibrary.requestAuthorization({ (authorizationStatus: PHAuthorizationStatus) -> Void in
                        if authorizationStatus == .authorized {
                            PHPhotoLibrary.shared().performChanges({
                                                                    PHAssetChangeRequest.creationRequestForAssetFromVideo(atFileURL: destinationURL)}) { completed, error in
                                if completed {
                                    print("Video asset created")
                                } else {
                                    print("error")
                                }
                            }
                        }
                    })
                } catch { print(error) }
            }.resume()
        } else {
            print("File already exists at destination url")
        }
    }
}
