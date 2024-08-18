//---------------add two maps to each other -----------
typedef Name = String;
typedef Age = int;

const Map<Name, Age> twoPeople = {
  'foo': 20,
  'bar': 30,
};

extension AddOperator<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this}..addAll(other);
}

final threeePeople = {...twoPeople} + {"baz": 40};

// threeePeople = {foo: 20, bar: 30, baz: 40}
//----------------------------------------------
extension StringExtension on String {
  String get toCapital {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension IntegetExtension on int? {
  bool get success {
    if (this == 200 || this == 201 || this == 204) {
      return true;
    }
    return false;
  }
}

extension GeneralExtension<T> on T {
  bool get isEnum {
    final split = toString().split('.');
    return split.length > 1 && split[0] == runtimeType.toString();
  }

  String get getEnumString => toString().split('.').last.toCapital;
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) {
    return Iterable.generate(length).map((i) => f(i, elementAt(i)));
  }
}

extension MapExtension on Map {
  String get format {
    if (isEmpty) {
      return "";
    } else {
      var firstKey = entries.first.key;
      var mapValues = entries.first.value;
      return "?$firstKey=$mapValues";
    }
  }
}
