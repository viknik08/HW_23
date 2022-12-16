//
//  Model.swift
//  HW_23
//
//  Created by Виктор Басиев on 01.12.2022.
//

import Foundation

struct MediaListModel: Identifiable {
    let id = UUID()
    var icon: String
    var name: String
    var isOn: Bool
    
    static let mediaList: [MediaListModel] =
                [MediaListModel(icon: "rectangle", name: "Плейлисты", isOn: false),
                MediaListModel(icon: "music.mic", name: "Артисты", isOn: false),
                MediaListModel(icon: "rectangle.stack", name: "Альбомы", isOn: false),
                MediaListModel(icon: "music.note", name: "Песни", isOn: false),
                MediaListModel(icon: "tv", name: "Телешоу и фильмы", isOn: false),
                MediaListModel(icon: "music.note.tv", name: "Видеоклипы", isOn: false),
                MediaListModel(icon: "guitars", name: "Жанры", isOn: false),
                MediaListModel(icon: "person.2.crop.square.stack", name: "Сборники", isOn: false),
                MediaListModel(icon: "music.quarternote.3", name: "Авторы", isOn: false),
                MediaListModel(icon: "arrow.down.circle", name: "Загружено", isOn: false),
                MediaListModel(icon: "music.note.house", name: "Дополнительно", isOn: false)]
}
    
struct MiniPlayerModel {
    var icon: String
    var name: String
    var nameSing: String
    var duration: Int
    
    static let miniPlayer: [MiniPlayerModel] = [
        MiniPlayerModel(icon: "logoPlist", name: "Every", nameSing: "We love", duration: 234)
    ]
}

struct RadioListModel: Hashable {
    var icon: String
    var name: String
    var nameStation: String?
    var additionalInfo: String
    
    static let stationRadio: [[RadioListModel]] = [[
                RadioListModel(icon: "light-pop", name: "Легкий поп", nameStation: "Станция Apple Music", additionalInfo: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                  RadioListModel(icon: "hit", name: "Хиты", nameStation: "Станция Apple Music", additionalInfo: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                  RadioListModel(icon: "hip-hop", name: "Хип-хоп", nameStation: "Станция Apple Music", additionalInfo: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                  RadioListModel(icon: "pop", name: "Поп-музыка", nameStation: "Станция Apple Music", additionalInfo: "НОВЫЙ ВЫПУСК"),
                  RadioListModel(icon: "rock", name: "Классика рока", nameStation: "Станция Apple Music", additionalInfo: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                  RadioListModel(icon: "smus-music", name: "Смус-джаз", nameStation: "Станция Apple Music", additionalInfo: "ЭКСКЛЮЗИВ"),
                ],
                [
                    RadioListModel(icon: "alternativa-station", name: "Альтернатива", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "child-station", name: "Колыбельные", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "children-station", name: "Детские песни на русском", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "classic-rock-station", name: "Классика рока", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "hard-rock-station", name: "Хард-рок", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "hit-2000-station", name: "Хиты 2000-х", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "hit-2010-station", name: "Хиты 2010-х", additionalInfo: "Станция Apple Music"),
                    RadioListModel(icon: "hit-all-time-station", name: "Хиты на все времена", additionalInfo: "Станция Apple Music")
                ]]
}

struct SearchModel: Hashable {
    var icon: String
    var name: String
    var searchCell: SearchCollection?
    
    static let search: [SearchModel] = [
        SearchModel(icon: "pop-russia-search",
                    name: "Поп на русском",
                    searchCell: SearchCollection(name: "Поп на русском",
                                                 searchCell: [[
                                                    SearchCellModel(icon: "", name: "(Deluxe)", nameAlbum: "Ed Sheeran", additionalInfo: "АУДИО"),
                                                    SearchCellModel(icon: "", name: "1 (2015 Version)", nameAlbum: "The Beatles", additionalInfo: "НОВИНКИ"),
                                                    SearchCellModel(icon: "", name: "Multitude", nameAlbum: "Stromae", additionalInfo: "НОВИНКИ")
                                                 ],
                                                              [
                                                                SearchCellModel(icon: "", name: "Свой плейлист", additionalInfo: "Apple Music"),
                                                                SearchCellModel(icon: "", name: "Хиты", additionalInfo: "Apple Music"),
                                                                SearchCellModel(icon: "", name: "Поп", additionalInfo: "Apple Music")
                                                              ],
                                                              [
                                                                SearchCellModel(icon: "", name: "Феникс", additionalInfo: "ANNA ASTI"),
                                                                SearchCellModel(icon: "", name: "Sweetest Pie", additionalInfo: "Megan Thee Stallion & Dua Lipa"),
                                                                SearchCellModel(icon: "", name: "По полюшку", additionalInfo: "Akmal'"),
                                                                SearchCellModel(icon: "", name: "Танцевали до утра", additionalInfo: "Леша Свик"),
                                                                SearchCellModel(icon: "", name: "Он и Она", additionalInfo: "Jah Khalib & Akha"),
                                                                SearchCellModel(icon: "", name: "Time Today", additionalInfo: "Moneybag"),
                                                                SearchCellModel(icon: "", name: "Айсберг", additionalInfo: "Zivert"),
                                                                SearchCellModel(icon: "", name: "Азбука", additionalInfo: "Boulevard Depo & SPAK"),
                                                                SearchCellModel(icon: "", name: "Паранойя", additionalInfo: "XARISTA"),
                                                                SearchCellModel(icon: "", name: "Tell To My Heart", additionalInfo: "Meduza"),
                                                                SearchCellModel(icon: "", name: "Oh Na Na", additionalInfo: "Camila Cabello, Myke Towers & Tainy")
                                                              ]]
                                                )
                   ),
            SearchModel(icon: "pop-search", name: "Поп", searchCell: nil),
            SearchModel(icon: "hip-hop-russia-search", name: "Хип-хоп на русском", searchCell: nil),
            SearchModel(icon: "calmness-search", name: "Спокойствие", searchCell: nil),
            SearchModel(icon: "hits-search", name: "Хиты", searchCell: nil),
            SearchModel(icon: "siri-search", name: "Привет, Siri, включи...", searchCell: nil),
            SearchModel(icon: "hits-russia-search", name: "Хиты на русском", searchCell: nil),
            SearchModel(icon: "rock-russia-search", name: "Рок на русском", searchCell: nil),
            SearchModel(icon: "chats-search", name: "Чарты", searchCell: nil),
            SearchModel(icon: "dj-search", name: "DJ-миксы", searchCell: nil),
            SearchModel(icon: "sunrice-search", name: "Восход", searchCell: nil),
            SearchModel(icon: "hip-hop-search", name: "Хип-хоп", searchCell: nil),
            SearchModel(icon: "children-search", name: "Для детей", searchCell: nil),
            SearchModel(icon: "family-search", name: "Для семьи", searchCell: nil)
        ]
}

struct SearchCellModel: Hashable {
    var icon: String
    var name: String
    var nameAlbum: String?
    var additionalInfo: String
    
    static let searchCell: [[SearchCellModel]] = [[
            SearchCellModel(icon: "", name: "(Deluxe)", nameAlbum: "Ed Sheeran", additionalInfo: "АУДИО"),
            SearchCellModel(icon: "", name: "1 (2015 Version)", nameAlbum: "The Beatles", additionalInfo: "НОВИНКИ"),
            SearchCellModel(icon: "", name: "Multitude", nameAlbum: "Stromae", additionalInfo: "НОВИНКИ")
        ],
        [
            SearchCellModel(icon: "", name: "Создать плайлист", additionalInfo: "Apple Music"),
            SearchCellModel(icon: "", name: "Хиты", additionalInfo: "Apple Music"),
            SearchCellModel(icon: "", name: "Поп", additionalInfo: "Apple Music")
        ],
        [
            SearchCellModel(icon: "", name: "Феникс", additionalInfo: "ANNA ASTI"),
            SearchCellModel(icon: "", name: "Sweetest Pie", additionalInfo: "Megan Thee Stallion & Dua Lipa"),
            SearchCellModel(icon: "", name: "По полюшку", additionalInfo: "Akmal'"),
            SearchCellModel(icon: "", name: "Танцевали до утра", additionalInfo: "Леша Свик"),
            SearchCellModel(icon: "", name: "Он и Она", additionalInfo: "Jah Khalib & Akha"),
            SearchCellModel(icon: "", name: "Time Today", additionalInfo: "Moneybag"),
            SearchCellModel(icon: "", name: "Айсберг", additionalInfo: "Zivert"),
            SearchCellModel(icon: "", name: "Азбука", additionalInfo: "Boulevard Depo & SPAK"),
            SearchCellModel(icon: "", name: "Паранойя", additionalInfo: "XARISTA"),
            SearchCellModel(icon: "", name: "Tell To My Heart", additionalInfo: "Meduza"),
            SearchCellModel(icon: "", name: "Oh Na Na", additionalInfo: "Camila Cabello, Myke Towers & Tainy")
        ]
        ]
}

struct SearchCollection: Hashable {
    var name: String
    var searchCell: [[SearchCellModel]]
}
