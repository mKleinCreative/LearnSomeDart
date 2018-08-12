import 'dart:async';

main () async {
 	print('about to fetch data..');
  
  var result = await get('http:/definetlyawebsite.com')
    
}

// mock api call
Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Got the data!';
  });
}