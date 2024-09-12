//
//  DrapeauxViewModel.swift
//  MoglApp
//
//  Created by Apprenant 167 on 05/08/2024.
//

import Foundation

class CountryViewModel: ObservableObject {
    @Published var country: [Country]
    @Published var correctAnswer: Int
    @Published var showingScore: Bool = false
    @Published var answerChoosed: String = ""
    @Published var score = 0
    @Published var numberOfRounds = 0
    @Published var showingFinalScore = false
    
    let maximumOfRounds = 5
   // @Published var wrongAnswer = ""

    init() {
        country = [
            Country(name: "Afghanistan", flag: "🇦🇫", capital: "Kaboul"),
            Country(name: "Albania", flag: "🇦🇱", capital: "Tirana"),
            Country(name: "Algeria", flag: "🇩🇿", capital: "Alger"),
            Country(name: "Andorra", flag: "🇦🇩", capital: "Andorre-la-Vieille"),
            Country(name: "Angola", flag: "🇦🇴", capital: "Luanda"),
            Country(name: "Antigua and Barbuda", flag: "🇦🇬", capital: "Saint John's"),
            Country(name: "Argentina", flag: "🇦🇷", capital: "Buenos Aires"),
            Country(name: "Armenia", flag: "🇦🇲", capital: "Erevan"),
            Country(name: "Australia", flag: "🇦🇺", capital: "Canberra"),
            Country(name: "Austria", flag: "🇦🇹", capital: "Vienne"),
            Country(name: "Azerbaijan", flag: "🇦🇿", capital: "Bakou"),
            Country(name: "Bahamas", flag: "🇧🇸", capital: "Nassau"),
            Country(name: "Bahrain", flag: "🇧🇭", capital: "Manama"),
            Country(name: "Bangladesh", flag: "🇧🇩", capital: "Dacca"),
            Country(name: "Barbados", flag: "🇧🇧", capital: "Bridgetown"),
            Country(name: "Belarus", flag: "🇧🇾", capital: "Minsk"),
            Country(name: "Belgium", flag: "🇧🇪", capital: "Bruxelles"),
            Country(name: "Belize", flag: "🇧🇿", capital: "Belmopan"),
            Country(name: "Benin", flag: "🇧🇯", capital: "Porto-Novo"),
            Country(name: "Bhutan", flag: "🇧🇹", capital: "Thimphou"),
            Country(name: "Bolivia", flag: "🇧🇴", capital: "Sucre"),
            Country(name: "Bosnia and Herzegovina", flag: "🇧🇦", capital: "Sarajevo"),
            Country(name: "Botswana", flag: "🇧🇼", capital: "Gaborone"),
            Country(name: "Brazil", flag: "🇧🇷", capital: "Brasilia"),
            Country(name: "Brunei", flag: "🇧🇳", capital: "Bandar Seri Begawan"),
            Country(name: "Bulgaria", flag: "🇧🇬", capital: "Sofia"),
            Country(name: "Burkina Faso", flag: "🇧🇫", capital: "Ouagadougou"),
            Country(name: "Burundi", flag: "🇧🇮", capital: "Gitega"),
            Country(name: "Cabo Verde", flag: "🇨🇻", capital: "Praia"),
            Country(name: "Cambodia", flag: "🇰🇭", capital: "Phnom Penh"),
            Country(name: "Cameroon", flag: "🇨🇲", capital: "Yaoundé"),
            Country(name: "Canada", flag: "🇨🇦", capital: "Ottawa"),
            Country(name: "Central African Republic", flag: "🇨🇫", capital: "Bangui"),
            Country(name: "Chad", flag: "🇹🇩", capital: "N'Djamena"),
            Country(name: "Chile", flag: "🇨🇱", capital: "Santiago"),
            Country(name: "China", flag: "🇨🇳", capital: "Pékin"),
            Country(name: "Colombia", flag: "🇨🇴", capital: "Bogotá"),
            Country(name: "Comoros", flag: "🇰🇲", capital: "Moroni"),
            Country(name: "Congo (Congo-Brazzaville)", flag: "🇨🇬", capital: "Brazzaville"),
            Country(name: "Congo (Congo-Kinshasa)", flag: "🇨🇩", capital: "Kinshasa"),
            Country(name: "Costa Rica", flag: "🇨🇷", capital: "San José"),
            Country(name: "Croatia", flag: "🇭🇷", capital: "Zagreb"),
            Country(name: "Cuba", flag: "🇨🇺", capital: "La Havane"),
            Country(name: "Cyprus", flag: "🇨🇾", capital: "Nicosie"),
            Country(name: "Czech Republic", flag: "🇨🇿", capital: "Prague"),
            Country(name: "Denmark", flag: "🇩🇰", capital: "Copenhague"),
            Country(name: "Djibouti", flag: "🇩🇯", capital: "Djibouti"),
            Country(name: "Dominica", flag: "🇩🇲", capital: "Roseau"),
            Country(name: "Dominican Republic", flag: "🇩🇴", capital: "Saint-Domingue"),
            Country(name: "Ecuador", flag: "🇪🇨", capital: "Quito"),
            Country(name: "Egypt", flag: "🇪🇬", capital: "Le Caire"),
            Country(name: "El Salvador", flag: "🇸🇻", capital: "San Salvador"),
            Country(name: "Equatorial Guinea", flag: "🇬🇶", capital: "Malabo"),
            Country(name: "Eritrea", flag: "🇪🇷", capital: "Asmara"),
            Country(name: "Estonia", flag: "🇪🇪", capital: "Tallinn"),
            Country(name: "Eswatini", flag: "🇸🇿", capital: "Mbabane"),
            Country(name: "Ethiopia", flag: "🇪🇹", capital: "Addis-Abeba"),
            Country(name: "Fiji", flag: "🇫🇯", capital: "Suva"),
            Country(name: "Finland", flag: "🇫🇮", capital: "Helsinki"),
            Country(name: "France", flag: "🇫🇷", capital: "Paris"),
            Country(name: "Gabon", flag: "🇬🇦", capital: "Libreville"),
            Country(name: "Gambia", flag: "🇬🇲", capital: "Banjul"),
            Country(name: "Georgia", flag: "🇬🇪", capital: "Tbilissi"),
            Country(name: "Germany", flag: "🇩🇪", capital: "Berlin"),
            Country(name: "Ghana", flag: "🇬🇭", capital: "Accra"),
            Country(name: "Greece", flag: "🇬🇷", capital: "Athènes"),
            Country(name: "Grenada", flag: "🇬🇩", capital: "Saint-Georges"),
            Country(name: "Guatemala", flag: "🇬🇹", capital: "Guatemala City"),
            Country(name: "Guinea", flag: "🇬🇳", capital: "Conakry"),
            Country(name: "Guinea-Bissau", flag: "🇬🇼", capital: "Bissau"),
            Country(name: "Guyana", flag: "🇬🇾", capital: "Georgetown"),
            Country(name: "Haiti", flag: "🇭🇹", capital: "Port-au-Prince"),
            Country(name: "Honduras", flag: "🇭🇳", capital: "Tegucigalpa"),
            Country(name: "Hungary", flag: "🇭🇺", capital: "Budapest"),
            Country(name: "Iceland", flag: "🇮🇸", capital: "Reykjavik"),
            Country(name: "India", flag: "🇮🇳", capital: "New Delhi"),
            Country(name: "Indonesia", flag: "🇮🇩", capital: "Jakarta"),
            Country(name: "Iran", flag: "🇮🇷", capital: "Téhéran"),
            Country(name: "Iraq", flag: "🇮🇶", capital: "Bagdad"),
            Country(name: "Ireland", flag: "🇮🇪", capital: "Dublin"),
            Country(name: "Israel", flag: "🇮🇱", capital: "Jérusalem"),
            Country(name: "Italy", flag: "🇮🇹", capital: "Rome"),
            Country(name: "Jamaica", flag: "🇯🇲", capital: "Kingston"),
            Country(name: "Japan", flag: "🇯🇵", capital: "Tokyo"),
            // Continuer de remplir la liste avec les autres pays
        ].shuffled()
        
        correctAnswer = Int.random(in: (0...2))
    }
    
    func flagChoosed(_ number: Int) {
        if number == correctAnswer {
            answerChoosed = "Bonne réponse 🥳"
            score += 1
        } else {
            answerChoosed = "Mauvaise réponse 🫨"
        }
        showingScore = true
    }
    
    func nextFlagChoosed() {
        if numberOfRounds <= 3 {
            country.shuffle()
            numberOfRounds += 1
        } else {
            print("stop")
        }
    }
    
    func nextCapitalChoosed() {
        if numberOfRounds <= 4 {
            country.shuffle()
            numberOfRounds += 1
        } else {
            print("stop")
        }
    }
}


