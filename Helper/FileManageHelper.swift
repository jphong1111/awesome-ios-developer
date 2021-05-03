//
//  FileManageHelper.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/22/21.
//

import Foundation

class FileManageHelper {
    
    static let manager = FileManageHelper()
    
    let useFileHandler = FileManager.default
    
    private init() {}
    
    func getDocumentDirectoryPath() -> URL {
        guard let url = useFileHandler.urls(for: .documentDirectory,
                                            in: .userDomainMask).first else { fatalError("Can't find path") }
        return url
    }
    
    func createFile(resourceName: String, fileExtension: String) {
        let fileURLProject = Bundle.main.path(forResource: resourceName, ofType: fileExtension)
        let folderUrl = getDocumentDirectoryPath()
        let fileUrl = folderUrl.appendingPathComponent("\(resourceName).\(fileExtension)")
        do {
            try useFileHandler.copyItem(atPath: fileURLProject ?? "", toPath: fileUrl.path)
        } catch {
            print(error)
        }
    }
    
    func writeFile(fileName: String, fileType: String, text: String) {
        let fileNameWithPath: String = "\(fileName).\(fileType)"
        let filePath = getDocumentDirectoryPath()
        let fileUrl = filePath.appendingPathComponent(fileNameWithPath)
        if useFileHandler.fileExists(atPath: fileUrl.path) {
            do {
                guard let fileContents = useFileHandler.contents(atPath: fileUrl.path) else { return }
                let fileContentsAsString = String(bytes: fileContents, encoding: .utf8)
                let fullText = "\(String(describing: fileContentsAsString) ):\(text)"
                guard let data = fullText.data(using: .utf8) else { return }
                try data.write(to: fileUrl)
            } catch {
                print(error)
            }
        } else {
            print("File is not existed")
        }
    }
    
    func readFile(filename: String, type: String) -> String {
        let realFileName = "\(filename).\(type)"
        let fileURLProject = getDocumentDirectoryPath()
        
        let fileURL = fileURLProject.appendingPathComponent(realFileName)
        
        do {
            let fileContentsAsString = try String(contentsOf: fileURL, encoding: .utf8)
            return fileContentsAsString
        } catch { fatalError("no file") }
    }
    
    func removeFile(fileName: String, fileType: String) {
        let fileNameWithPath: String = "\(fileName).\(fileType)"
        let filePath = getDocumentDirectoryPath()
        let fileUrl = filePath.appendingPathComponent(fileNameWithPath)
        if useFileHandler.fileExists(atPath: fileUrl.path) {
            do {
                try useFileHandler.removeItem(at: fileUrl)
            } catch {
                print(error)
            }
        } else {
            print("File is not existed")
        }
    }
}
