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
        MiniPlayerModel(icon: "CA", name: "Marvel", nameSing: "We`re love CA", duration: 234)
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

