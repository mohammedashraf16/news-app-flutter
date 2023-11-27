import 'package:untitled/base_screen.dart';
import 'package:untitled/basics_opp/slider_mixin.dart';
void main(){
  FavScreen favScreen = FavScreen();
  favScreen.execute();
  favScreen.onSlideChange();


}
class FavScreen extends BaseScreen with SliderMixin{
  FavScreen():super ("HomeScreen");

  void execute(){
    showLodingAnimation();

    }
    @override
  void showLodingAnimation() {
    // TODO: implement showLodingAnimation
   // super.showLodingAnimation();
   print('Heart animation');
  }

  @override
  void getData() {
    // TODO: implement getData
  }
  }


