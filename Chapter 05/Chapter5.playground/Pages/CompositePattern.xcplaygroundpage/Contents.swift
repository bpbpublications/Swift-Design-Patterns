import UIKit

protocol Component {
    func operation()
}

class Composite: Component {
    private var children: [Component] = []

    func add(_ component: Component) {
        children.append(component)
    }

    func operation() {
        print("Composite operation")
        for child in children {
            child.operation()
        }
    }
}

protocol FileComponent {
    func display()
}

class File: FileComponent {
    private let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func display() {
        print("File: \(name)")
    }
}

class Directory: FileComponent {
    private let name: String
    private var files: [FileComponent] = []
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ component: FileComponent) {
        files.append(component)
    }
    
    func display() {
        print("Directory: \(name)")
        for file in files {
            file.display()
        }
    }
}

// Create files
let documentFile = File(name: "Document1.txt")
let imageFile = File(name: "Image.jpg")
let spreadSheetFile = File(name: "Spreadsheet.xlsx")

// Create directories
let workDirecotry = Directory(name: "Work")
let personalDirectory = Directory(name: "Personal")

// Add files to directories
workDirecotry.add(documentFile)
workDirecotry.add(imageFile)
personalDirectory.add(spreadSheetFile)

// Create a root directory and add subdirectories and files
let root = Directory(name: "Root")
root.add(workDirecotry)
root.add(personalDirectory)

// Display the whole file system
root.display()
