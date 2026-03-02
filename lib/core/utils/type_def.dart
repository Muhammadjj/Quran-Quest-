import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

// typedef ResultVoid = Either<FirebaseErrorModel, void>;
// typedef ResultStream<T> = Stream<Either<FirebaseErrorModel, T>>;
// typedef ResultStreamVoid = Stream<Either<FirebaseErrorModel, void>>;
// typedef ResultStreamList<T> = Stream<Either<FirebaseErrorModel, List<T>>>;
// typedef ResultStreamMap<K, V> = Stream<Either<FirebaseErrorModel, Map<K, V>>>;
// typedef ResultStreamListMap<K, V>
//     = Stream<Either<FirebaseErrorModel, List<Map<K, V>>>>;
