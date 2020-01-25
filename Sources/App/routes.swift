import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!\nThe thing is that this will be my page\n\nName: León Yannik López Rojas"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.get("Ricky") { req in
        return "Saludos Ricky, mira, parece que esto está funcionando:   :)   :D"
    }
    
    router.get("juanPablo") { req in
        return "Hola Juan Pablo!!!!!\n\nNo inventes man, me costó 4 días no manches\n pero mira ya pude.\n\n\nCorre con el Nginx para que pueda tener el fregado candadito... Y la app de Vapor corre consupervisor para que si muere o algo el servidor, luego luego que arranque, comience la app. :D\n ahora supongo que debo empezar a hacer como un blog o algo lol."
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
