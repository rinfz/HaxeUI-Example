package ;

import haxe.ui.macros.ComponentMacros;
import haxe.ui.containers.HBox;
import haxe.ui.components.TextField;
import haxe.ui.components.Button;

class First extends HBox {
  public function new() {
    super();
    var ui = ComponentMacros.buildComponent("assets/first.xml");

    var textfield = ui.findComponent("textfield", TextField);

    ui.findComponent("dec", Button).onClick = function(e) {
      var n = Std.parseInt(textfield.text) - 1;
      textfield.text = Std.string(n);
    }

    ui.findComponent("inc", Button).onClick = function(e) {
      var n = Std.parseInt(textfield.text) + 1;
      textfield.text = Std.string(n);
    }

    addComponent(ui);
  }
}
