require('Person')
defineClass("MainTableViewController", {
            tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
                var person = self.dataList().objectAtIndex(indexPath.row());
                var alertView = require('UIAlertView').alloc().init()
                alertView.setTitle('Alert');
                alertView.setMessage(person.personName());
                alertView.addButtonWithTitle('OK');
                alertView.show();
            }
            }, {})