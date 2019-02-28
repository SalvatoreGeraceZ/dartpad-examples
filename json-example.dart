import 'dart:convert';


void main() {
  var a = jsonDecode('["a", "aa", { "a": 1, "b": 2}]', reviver: (Object n, Object v) { print("n: $n, v:$v"); return v;});
  
	print('$a');
}
