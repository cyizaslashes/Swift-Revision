// Define a class for a ToDoItem
class ToDoItem {
    var title: String
    var completed: Bool
    
    init(title: String) {
        self.title = title
        self.completed = false
    }
}

// Create an array to store to-do items
var toDoList: [ToDoItem] = []

// Function to add a new item to the to-do list
func addNewItem(title: String) {
    let newItem = ToDoItem(title: title)
    toDoList.append(newItem)
}

// Function to mark an item as completed
func markAsCompleted(index: Int) {
    if index >= 0 && index < toDoList.count {
        toDoList[index].completed = true
    }
}

// Display the to-do list
func displayToDoList() {
    print("To-Do List:")
    for (index, item) in toDoList.enumerated() {
        let status = item.completed ? "✅" : "❌"
        print("\(index + 1). \(status) \(item.title)")
    }
}

// Main program
addNewItem(title: "Buy groceries")
addNewItem(title: "Finish homework")
markAsCompleted(index: 0)
displayToDoList()
