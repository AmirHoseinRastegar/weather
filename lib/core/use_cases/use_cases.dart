///this class is for using callable classes in the app
///so we can use them as a unit thing by extending
///our classes from this UseCase class
///this class takes a P(parameter) and returns a T(Type of data we want to return)


abstract class UseCase<T,P>{

  Future<T> call(P params);
}