import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantsRecord extends FirestoreRecord {
  MerchantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "merchantId" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  bool hasMerchantId() => _merchantId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "merchantType" field.
  String? _merchantType;
  String get merchantType => _merchantType ?? '';
  bool hasMerchantType() => _merchantType != null;

  // "priceRange" field.
  String? _priceRange;
  String get priceRange => _priceRange ?? '';
  bool hasPriceRange() => _priceRange != null;

  // "delivery" field.
  bool? _delivery;
  bool get delivery => _delivery ?? false;
  bool hasDelivery() => _delivery != null;

  // "customerRating" field.
  double? _customerRating;
  double get customerRating => _customerRating ?? 0.0;
  bool hasCustomerRating() => _customerRating != null;

  // "customerReviewCount" field.
  int? _customerReviewCount;
  int get customerReviewCount => _customerReviewCount ?? 0;
  bool hasCustomerReviewCount() => _customerReviewCount != null;

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  bool hasAddress() => _address != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "opens" field.
  String? _opens;
  String get opens => _opens ?? '';
  bool hasOpens() => _opens != null;

  void _initializeFields() {
    _merchantId = snapshotData['merchantId'] as String?;
    _name = snapshotData['name'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _description = snapshotData['description'] as String?;
    _website = snapshotData['website'] as String?;
    _merchantType = snapshotData['merchantType'] as String?;
    _priceRange = snapshotData['priceRange'] as String?;
    _delivery = snapshotData['delivery'] as bool?;
    _customerRating = castToType<double>(snapshotData['customerRating']);
    _customerReviewCount = castToType<int>(snapshotData['customerReviewCount']);
    _address = snapshotData['address'] as LatLng?;
    _logo = snapshotData['logo'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _video = snapshotData['video'] as String?;
    _opens = snapshotData['opens'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merchants');

  static Stream<MerchantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MerchantsRecord.fromSnapshot(s));

  static Future<MerchantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MerchantsRecord.fromSnapshot(s));

  static MerchantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MerchantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MerchantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MerchantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MerchantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MerchantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMerchantsRecordData({
  String? merchantId,
  String? name,
  String? imageUrl,
  String? description,
  String? website,
  String? merchantType,
  String? priceRange,
  bool? delivery,
  double? customerRating,
  int? customerReviewCount,
  LatLng? address,
  String? logo,
  String? image1,
  String? image2,
  String? image3,
  String? video,
  String? opens,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'merchantId': merchantId,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'website': website,
      'merchantType': merchantType,
      'priceRange': priceRange,
      'delivery': delivery,
      'customerRating': customerRating,
      'customerReviewCount': customerReviewCount,
      'address': address,
      'logo': logo,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'video': video,
      'opens': opens,
    }.withoutNulls,
  );

  return firestoreData;
}

class MerchantsRecordDocumentEquality implements Equality<MerchantsRecord> {
  const MerchantsRecordDocumentEquality();

  @override
  bool equals(MerchantsRecord? e1, MerchantsRecord? e2) {
    return e1?.merchantId == e2?.merchantId &&
        e1?.name == e2?.name &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.description == e2?.description &&
        e1?.website == e2?.website &&
        e1?.merchantType == e2?.merchantType &&
        e1?.priceRange == e2?.priceRange &&
        e1?.delivery == e2?.delivery &&
        e1?.customerRating == e2?.customerRating &&
        e1?.customerReviewCount == e2?.customerReviewCount &&
        e1?.address == e2?.address &&
        e1?.logo == e2?.logo &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.video == e2?.video &&
        e1?.opens == e2?.opens;
  }

  @override
  int hash(MerchantsRecord? e) => const ListEquality().hash([
        e?.merchantId,
        e?.name,
        e?.imageUrl,
        e?.description,
        e?.website,
        e?.merchantType,
        e?.priceRange,
        e?.delivery,
        e?.customerRating,
        e?.customerReviewCount,
        e?.address,
        e?.logo,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.video,
        e?.opens
      ]);

  @override
  bool isValidKey(Object? o) => o is MerchantsRecord;
}
