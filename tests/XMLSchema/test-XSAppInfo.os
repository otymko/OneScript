Перем ЮнитТест;

#Область ОбработчикиСобытийМодуля

Функция ПолучитьСписокТестов(МенеджерТестирования) Экспорт
	
	ЮнитТест = МенеджерТестирования;

	СписокТестов = Новый Массив;
	СписокТестов.Добавить("ТестКонструктор");
	СписокТестов.Добавить("TestConstructor");
	СписокТестов.Добавить("ТестИсточник");

	Возврат СписокТестов;

КонецФункции

#КонецОбласти

#Область ОбработчикиТестирования

Процедура ТестКонструктор() Экспорт

	ИнформацияДляПриложения = Новый ИнформацияДляПриложенияXS;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(ИнформацияДляПриложения), Тип("ИнформацияДляПриложенияXS"));
	ЮнитТест.ПроверитьРавенство(ИнформацияДляПриложения.ТипКомпоненты, ТипКомпонентыXS.ИнформацияПриложения);
	
КонецПроцедуры

Procedure TestConstructor() Export

	AppInfo = New XSAppInfo;
	
	ЮнитТест.ПроверитьРавенство(TypeOf(AppInfo), Type("XSAppInfo"));
	ЮнитТест.ПроверитьРавенство(AppInfo.ComponentType, XSComponentType.AppInfo);

EndProcedure

Procedure ТестИсточник() Export

	ИнформацияДляПриложения = Новый ИнформацияДляПриложенияXS;
	ИнформацияДляПриложения.Источник = "https://oscript.io";
	
	ЮнитТест.ПроверитьРавенство(ИнформацияДляПриложения.Источник, "https://oscript.io");

EndProcedure

#КонецОбласти