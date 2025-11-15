from typing import List
from dataclasses import dataclass


@dataclass
class HbkRegion:
    name: str


@dataclass
class TrackRegion(HbkRegion):
    short_name: str
    track_num: int


class Regions:
    s = HbkRegion("Store")

    t1 = TrackRegion("Track 1: A Fresh Start", "Track 1", 1)
    t2 = TrackRegion("Track 2: Power Up", "Track 2", 2)
    t3 = TrackRegion("Track 3: Trial By (Volcanic) Fire", "Track 3", 3)
    t4 = TrackRegion("Track 4: Less Budget, More Problems", "Track 4", 4)
    t5 = TrackRegion("Track 5: Breakin' Out", "Track 5", 5)
    t6 = TrackRegion("Track 6: L.I.F.T. Me Up", "Track 6", 6)
    t7 = TrackRegion("Track 7: The Climb", "Track 7", 7)
    t8 = TrackRegion("Track 8: A History Lesson", "Track 8", 8)
    t9 = TrackRegion("Track 9: Take the Stage", "Track 9", 9)
    t10 = TrackRegion("Track 10: A Masterplan", "Track 10", 10)
    t11 = TrackRegion("Track 11: The Needle Drop", "Track 11", 11)
    t12 = TrackRegion("Track 12: Curate the Future", "Track 12", 12)

    all_regions: List[HbkRegion] = [
        s, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12
    ]


    @classmethod
    def get_from_name(cls, name: str) -> HbkRegion:
        for region in cls.all_regions:
            if region.name == name:
                return region
        return None
    

    @classmethod
    def get_from_short_name(cls, name: str) -> TrackRegion:
        for region in cls.all_regions:
            if isinstance(region, TrackRegion):
                if region.short_name == name:
                    return region
        return None
    

    @classmethod
    def get_from_track_num(cls, num: int) -> TrackRegion:
        for region in cls.all_regions:
            if isinstance(region, TrackRegion):
                if region.track_num == num:
                    return region
        return None