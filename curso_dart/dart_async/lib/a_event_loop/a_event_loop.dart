import 'dart:async';

void main() {
  print('Inicio');

  Timer.run((){
  scheduleMicrotask(()=>print('Microtask 1'));
    print('Event 1');
  });
  Timer.run(()=>print('Evente 2'));
  Timer.run(()=>print('Evente 3'));
  scheduleMicrotask(()=>print('Microtask 1'));
  scheduleMicrotask(()=>print('Microtask 2'));

  print('Fim');
}
