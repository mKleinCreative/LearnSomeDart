import 'dart:convert';

void main() {
  var rawJson = '{"url": "https://jsonplaceholder.typicode.com/photos", "id": 1}';
  
  var parsedJson = json.decode(rawJson);
  var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);
  var imageModelJson = new ImageModel.fromJson(parsedJson);
  
  print(imageModel.url);
  print(imageModel.id);
  print(imageModelJson.url);
  print(imageModelJson.id);
}

class ImageModel {
  int id;
  String url;
  
  // this method of creation allows for more manual control over what you want the image to be.
  ImageModel(this.id, this.url);
  // this way you can just pass in a JSON object to the image model and not have to worry about 
  // pulling out custom values.
  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}