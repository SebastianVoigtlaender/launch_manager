package com.launch_manager

data class User(
    val id: String,
    val name: String,
    val email: String
)

class main {
    private val users = mutableListOf<User>()

    fun initialize() {
        println("Initializing launch_manager")
        users.add(User("1", "John Doe", "john@example.com"))
        users.add(User("2", "Jane Smith", "jane@example.com"))
    }

    fun run() {
        println("Welcome to launch_manager")
        println("Users:")
        users.forEach { user ->
            println("- \${user.name} (\${user.email})")
        }
    }

    fun addUser(user: User) {
        users.add(user)
    }

    fun getUserCount(): Int = users.size
}

fun main() {
    val app = main()
    app.initialize()
    app.run()
    println("Total users: \${app.getUserCount()}")
}

# Touch update: 1761001655

# Touch update: 1761001655
