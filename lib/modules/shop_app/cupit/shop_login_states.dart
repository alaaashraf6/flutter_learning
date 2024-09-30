

abstract class ShopLoginStates {}


class  ShopLoginInitialState extends ShopLoginStates{}
class  ShopLoginChangeState extends ShopLoginStates{}
class  ShopLoginLoadingState extends ShopLoginChangeState{}
class  ShopLoginSuccessState extends ShopLoginChangeState{}
class  ShopLoginErrorState extends ShopLoginChangeState{}

