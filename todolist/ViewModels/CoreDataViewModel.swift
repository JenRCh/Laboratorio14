import Foundation

class CoreDataViewModel: ObservableObject{
    @Published var coreDM = CoreDateManager()
    @Published var tasks: [TaskEntity] = [TaskEntity]()
    
    
    func saveTask(title:String,descripton:String, priority:String){
        //Validations
        
        coreDM.saveTask(title: title, description: descripton, priority: priority)
    }
    
    func getAllTask(){
        tasks = self.coreDM.getAllTask()
    }
    
    func deleteTask(task:TaskEntity){
        //Validations
        coreDM.deleteTask(task: task)
    }
}
