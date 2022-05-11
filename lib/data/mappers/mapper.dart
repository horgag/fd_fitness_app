
/// Mapper interface to convert from type [F] to type T
abstract class Mapper<F, T> {
  T map(F from);
}
