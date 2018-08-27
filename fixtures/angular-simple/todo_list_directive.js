app.controller('todoListCtrl', function(TodoListService){
  var $ctrl = this;
  
  $ctrl.todoList = TodoListService.todoList;
  $ctrl.addItem = function(itemName){
    TodoListService.addItem(itemName);
  };
  $ctrl.deleteItem = function(index){
    TodoListService.deleteItem(index);
  };
})

app.directive('todoList', function(){
  return {
    templateUrl: 'todo_list_directive.html',
    controller: 'todoListCtrl',
    controllerAs: '$ctrl',
    bindToController: true,
  };
});
