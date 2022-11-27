import Foundation


struct Section: Hashable {
    let id = UUID()
    
    
    let type: SectionType
    let title: String
    let subtitle: String
    let items: [Item]
    
    init(type: SectionType, title: String = "", subtitle: String = "", items:[Item] = []) {
        self.type = type
        self.title = title
        self.subtitle = subtitle
        self.items = items
    }
    
    enum EventSectionType: String {
        case header
        case search
        case featured
        case featuredHeader
        case recommended
        case recommendedHeader
        case latest
        case latestHeader
        case detailHeader
        case hikingEvent
        case hikingEventHeader
        case recommendations
        case recommendationsHeader
        case location
        case locationHeader
        case atGlance
        case atGlanceHeader
        case similar
        case similarHeader
        case joinButton
        
    }
    
    struct SectionType: RawRepresentable, Hashable {
        typealias RawValue = String
        var rawValue: String
        
        init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        static let header = SectionType(rawValue: Section.EventSectionType.header.rawValue)
        static let search = SectionType(rawValue: Section.EventSectionType.search.rawValue)
        static let featured = SectionType(rawValue: Section.EventSectionType.featured.rawValue)
        static let featuredHeader = SectionType(rawValue: Section.EventSectionType.featuredHeader.rawValue)
        static let recommended = SectionType(rawValue: Section.EventSectionType.recommended.rawValue)
        static let recommendedHeader = SectionType(rawValue: Section.EventSectionType.recommendedHeader.rawValue)
        static let latest = SectionType(rawValue: Section.EventSectionType.latest.rawValue)
        static let latestHeader = SectionType(rawValue: Section.EventSectionType.latestHeader.rawValue)
        static let detailHeader = SectionType(rawValue: Section.EventSectionType.detailHeader.rawValue)
        static let hikingEvent = SectionType(rawValue: Section.EventSectionType.hikingEvent.rawValue)
        static let hikingEventHeader = SectionType(rawValue: Section.EventSectionType.hikingEventHeader.rawValue)
        static let recommendations = SectionType(rawValue: Section.EventSectionType.recommendations.rawValue)
        static let recommendationsHeader = SectionType(rawValue: Section.EventSectionType.recommendationsHeader.rawValue)
        static let location = SectionType(rawValue: Section.EventSectionType.location.rawValue)
        static let locationHeader = SectionType(rawValue: Section.EventSectionType.locationHeader.rawValue)
        static let atGlance = SectionType(rawValue: Section.EventSectionType.atGlance.rawValue)
        static let atGlanceHeader = SectionType(rawValue: Section.EventSectionType.atGlanceHeader.rawValue)
        static let similar = SectionType(rawValue: Section.EventSectionType.similar.rawValue)
        static let similarHeader = SectionType(rawValue: Section.EventSectionType.similarHeader.rawValue)
        static let joinButton = SectionType(rawValue: Section.EventSectionType.joinButton.rawValue)
    }
}
