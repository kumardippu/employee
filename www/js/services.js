angular.module('directory.services', ['ngResource'])

.factory('Employees', function ($resource) {
    //return $resource('http://ionic-directory.herokuapp.com/employees/:employeeId/:data');
    //return $resource('http://lex.com.my/dev_pf/employee/:employeeId/:data');
    //return $resource('http://lex.com.my/dev_pf/seller/emp.php/:employeeId/:data');
    return $resource('http://lex.com.my/dev_pf/seller_tools/api/:employeeId/:data');
    
});