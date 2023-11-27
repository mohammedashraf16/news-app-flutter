 abstract class BaseScreen {
  String _screenName ;
  BaseScreen(this._screenName){
    print('Current Screen : $_screenName');
  }
  void checkInhernet() {

  }

  void showNetworkErrorMessage() {}

  void getData();// abstract function

  void showLodingAnimation() {
    print('Circle Animation');
  }


  void hideLodingAnimation() {}

  void updateUi() {}
}