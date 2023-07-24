import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
	final String? title;
	final List<String>? authors;
	final String? publishedDate;
	final String? description;
	final List<IndustryIdentifier>? industryIdentifiers;
	final ReadingModes? readingModes;
	final int? pageCount;
	final String? printType;
	final String? maturityRating;
	final bool? allowAnonLogging;
	final String? contentVersion;
	final ImageLinks? imageLinks;
	final String? language;
	final String? previewLink;
	final String? infoLink;
	final String? canonicalVolumeLink;

	const VolumeInfo({
		this.title, 
		this.authors, 
		this.publishedDate, 
		this.description, 
		this.industryIdentifiers, 
		this.readingModes, 
		this.pageCount, 
		this.printType, 
		this.maturityRating, 
		this.allowAnonLogging, 
		this.contentVersion, 
		this.imageLinks, 
		this.language, 
		this.previewLink, 
		this.infoLink, 
		this.canonicalVolumeLink, 
	});

	factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
				title: json['title'] as String?,
				authors: json['authors'] as List<String>?,
				publishedDate: json['publishedDate'] as String?,
				description: json['description'] as String?,
				industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
						?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
						.toList(),
				readingModes: json['readingModes'] == null
						? null
						: ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
				pageCount: json['pageCount'] as int?,
				printType: json['printType'] as String?,
				maturityRating: json['maturityRating'] as String?,
				allowAnonLogging: json['allowAnonLogging'] as bool?,
				contentVersion: json['contentVersion'] as String?,
				imageLinks: json['imageLinks'] == null
						? null
						: ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
				language: json['language'] as String?,
				previewLink: json['previewLink'] as String?,
				infoLink: json['infoLink'] as String?,
				canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'title': title,
				'authors': authors,
				'publishedDate': publishedDate,
				'description': description,
				'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson()).toList(),
				'readingModes': readingModes?.toJson(),
				'pageCount': pageCount,
				'printType': printType,
				'maturityRating': maturityRating,
				'allowAnonLogging': allowAnonLogging,
				'contentVersion': contentVersion,
				'imageLinks': imageLinks?.toJson(),
				'language': language,
				'previewLink': previewLink,
				'infoLink': infoLink,
				'canonicalVolumeLink': canonicalVolumeLink,
			};

	@override
	List<Object?> get props {
		return [
				title,
				authors,
				publishedDate,
				description,
				industryIdentifiers,
				readingModes,
				pageCount,
				printType,
				maturityRating,
				allowAnonLogging,
				contentVersion,
				imageLinks,
				language,
				previewLink,
				infoLink,
				canonicalVolumeLink,
		];
	}
}