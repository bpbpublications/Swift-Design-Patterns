//: [Previous](@previous)

import Foundation

// Step 1: Define the Command Protocol

protocol Command {
    func execute()
    func undo()
}

// Step 2: Implement Concrete Command Classes

class AddTextCommand: Command {
    private var text: String
    private var editor: TextEditor
    private var previousText: String = ""

    init(text: String, editor: TextEditor) {
        self.text = text
        self.editor = editor
    }

    func execute() {
        previousText = editor.getText()
        editor.addText(text)
    }

    func undo() {
        editor.setText(previousText)
    }
}

class DeleteTextCommand: Command {
    private var editor: TextEditor
    private var deletedText: String = ""

    init(editor: TextEditor) {
        self.editor = editor
    }

    func execute() {
        deletedText = editor.deleteText()
    }

    func undo() {
        editor.addText(deletedText)
    }
}

// Step 3: Implement the Receiver

class TextEditor {
    private var text: String = ""

    func addText(_ newText: String) {
        text += newText
        print("Added text: \(newText)")
        print("Current Text: \(text)")
    }

    func deleteText() -> String {
        guard let lastCharacter = text.last else {
            return ""
        }
        let deletedText = String(lastCharacter)
        text.removeLast()
        print("Deleted text: \(deletedText)")
        print("Current Text: \(text)")
        return deletedText
    }

    func getText() -> String {
        text
    }

    func setText(_ newText: String) {
        text = newText
        print("Set Text: \(text)")
    }
}

// Step 4: Implement the Invoker

class TextEditorInvoker {
    private var commands: [Command] = []

    func executeCommand(command: Command) {
        command.execute()
        commands.append(command)
    }

    func undoLastCommand() {
        guard let lastCommand = commands.popLast() else {
            print("No commands to undo")
            return
        }
        lastCommand.undo()
    }
}

// Step 5: Using the Command Pattern

let textEditor = TextEditor()
let commandInvoker = TextEditorInvoker()

let addCommand1 = AddTextCommand(text: "Hello", editor: textEditor)
let addCommand2 = AddTextCommand(text: "Command", editor: textEditor)
let deleteCommand = DeleteTextCommand(editor: textEditor)

commandInvoker.executeCommand(command: addCommand1)
commandInvoker.executeCommand(command: addCommand2)
commandInvoker.executeCommand(command: deleteCommand)

//: [Next](@next)
