app.service('TodoListService', function(){
  var self = this;
  self.todoList = [];
  self.addItem = function(itemName){
    self.todoList.push(itemName)
  };
  self.deleteItem = function(index){
    self.todoList.splice(index, 1);
  };
});