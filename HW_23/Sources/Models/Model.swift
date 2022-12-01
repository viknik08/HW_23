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
    
    static func getMediaList() -> [MediaListModel] {
        return [MediaListModel(icon: "rectangle", name: "Плейлисты", isOn: false),
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
}
    


struct MiniPlayerModel {
    var icon: String
    var name: String
    var nameSing: String
    var duration: Int
}
