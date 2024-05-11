/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 37
///
/// Built on 2024-05-10 at 18:04 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get Lorby => 'Lorby ';
	String get yourRepetitor => 'Твой личный репетитор';
	String get welcomeBack => 'Вэлком бэк!';
	String get inputLogin => 'Введи туда-сюда логин';
	String get inputPassword => 'Пароль (тоже введи)';
	String get enter => 'Войти';
	String get noAccount => 'У меня еще нет аккаунта';
	String get error => 'Неверный логин или пароль';
	String get welcomeBackOnRussian => 'С возвращением!';
	String get LorbyYourRepet => 'Lorby - твой личный репетитор';
	String get exit => 'Выйти';
	String get registration => 'Регистрация';
	String get createAccount => 'Создать аккаунт \nLorby';
	String get inputEmail => 'Введи адрес почты';
	String get createLogin => 'Придумай логин';
	String get createPassword => 'Создай пароль';
	String get symbols => '• От 8 до 15 символов';
	String get letter => '• Строчные и прописные буквы';
	String get selectFromList => 'Выбрать из списка';
	String get number => '• Минимум 1 цифра';
	String get specSymbol => '• Минимум 1 спецсимвол';
	String get repeatPassword => 'Повтори пароль';
	String get continueText => 'Далее';
	String get notCorrectEmail => 'Неверный формат email';
	String get necessaryField => 'Обязательное поле';
	String get badSymbols => ' Недопустимые символы';
	String get passwordNotSimilar => 'Пароли не совпадают';
	String get sendEmail => 'Выслали письмо со ссылкой\nдля завершения регистрации\nна ';
	String get spam => 'Если письмо не пришло, не спеши\nждать совиную почту - лучше проверь\nящик “Спам”';
	String get emailNotCome => 'Письмо не пришло';
	String get resendEmail => 'Мы выслали еще одно письмо на указанную тобой почту';
	String get spam2 => 'Не забудь проверить  ящик “Спам”!11!!!!';
	String get understand => 'Понятно!!1!';
	String get owl => ' (´｡• ω •｡`)';
	String get exit2 => 'Точно выйти?';
	String get yes => 'Да, точно';
	String get no => 'Нет, остаться';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'Lorby': return 'Lorby ';
			case 'yourRepetitor': return 'Твой личный репетитор';
			case 'welcomeBack': return 'Вэлком бэк!';
			case 'inputLogin': return 'Введи туда-сюда логин';
			case 'inputPassword': return 'Пароль (тоже введи)';
			case 'enter': return 'Войти';
			case 'noAccount': return 'У меня еще нет аккаунта';
			case 'error': return 'Неверный логин или пароль';
			case 'welcomeBackOnRussian': return 'С возвращением!';
			case 'LorbyYourRepet': return 'Lorby - твой личный репетитор';
			case 'exit': return 'Выйти';
			case 'registration': return 'Регистрация';
			case 'createAccount': return 'Создать аккаунт \nLorby';
			case 'inputEmail': return 'Введи адрес почты';
			case 'createLogin': return 'Придумай логин';
			case 'createPassword': return 'Создай пароль';
			case 'symbols': return '• От 8 до 15 символов';
			case 'letter': return '• Строчные и прописные буквы';
			case 'selectFromList': return 'Выбрать из списка';
			case 'number': return '• Минимум 1 цифра';
			case 'specSymbol': return '• Минимум 1 спецсимвол';
			case 'repeatPassword': return 'Повтори пароль';
			case 'continueText': return 'Далее';
			case 'notCorrectEmail': return 'Неверный формат email';
			case 'necessaryField': return 'Обязательное поле';
			case 'badSymbols': return ' Недопустимые символы';
			case 'passwordNotSimilar': return 'Пароли не совпадают';
			case 'sendEmail': return 'Выслали письмо со ссылкой\nдля завершения регистрации\nна ';
			case 'spam': return 'Если письмо не пришло, не спеши\nждать совиную почту - лучше проверь\nящик “Спам”';
			case 'emailNotCome': return 'Письмо не пришло';
			case 'resendEmail': return 'Мы выслали еще одно письмо на указанную тобой почту';
			case 'spam2': return 'Не забудь проверить  ящик “Спам”!11!!!!';
			case 'understand': return 'Понятно!!1!';
			case 'owl': return ' (´｡• ω •｡`)';
			case 'exit2': return 'Точно выйти?';
			case 'yes': return 'Да, точно';
			case 'no': return 'Нет, остаться';
			default: return null;
		}
	}
}
