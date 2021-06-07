package ;

import haxe.ui.macros.ComponentMacros;
import haxe.ui.containers.HBox;
import haxe.ui.components.TextField;
import haxe.ui.components.Button;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.macros.ComponentMacros.build("assets/first.xml", {
  startValue: 50
}))
class First extends HBox {
  public function new() {
    super();
  }

  @:bind(textfield.text)
  public var textfieldText: String;

  @:bind(dec, MouseEvent.CLICK)
  function onDecClicked(e) {
    var n = Std.parseInt(textfieldText) - 1;
    textfieldText = Std.string(n);
  }

  @:bind(inc, MouseEvent.CLICK)
  function onIncClicked(e) {
    var n = Std.parseInt(textfieldText) + 1;
    textfieldText = Std.string(n);
  }
}
