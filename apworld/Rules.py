from worlds.generic.Rules import add_rule
from BaseClasses import CollectionState
from typing import Callable, Dict, TYPE_CHECKING
from .Regions import Regions


if TYPE_CHECKING:
    from . import HiFiRushWorld
else:
    HiFiRushWorld = object


class HbkRules:
    def __init__(self, world: "HiFiRushWorld") -> None:
        self.world = world


    def set_rules(self) -> None:
        player = self.world.player
        options = self.world.options

        def unlock_track_12(state: CollectionState) -> bool:
            return state.has("Unlock Next Track", player, 10)

        def beat_hit(state: CollectionState) -> bool:
            #return state.has("Beat Hit", player)
            return True
        
        def magnet(state: CollectionState) -> bool:
            #return state.has("Magnet Grab", player)
            return state.can_reach_region(Regions.t2.name, player)
        
        def parry(state: CollectionState) -> bool:
            #return state.has("Parry", player)
            return state.can_reach_region(Regions.t3.name, player)
        
        def peppermint(state: CollectionState) -> bool:
            #return state.has("Peppermint", player)
            return state.can_reach_region(Regions.t2.name, player)
        
        def macaron(state: CollectionState) -> bool:
            #return state.has("Macaron", player)
            return state.can_reach_region(Regions.t4.name, player)
        
        def korsica(state: CollectionState) -> bool:
            #return state.has("Korsica", player)
            return state.can_reach_region(Regions.t8.name, player)
        
        def rock_comic_a(state: CollectionState) -> bool:
            return state.has("Rock Comic A", player)
        
        def rock_comic_b(state: CollectionState) -> bool:
            return state.has("Rock Comic B", player)
        
        def rock_comic_c(state: CollectionState) -> bool:
            return state.has("Rock Comic C", player)
        
        def rock_comic_d(state: CollectionState) -> bool:
            return state.has("Rock Comic D", player)
        
        track_rules: Dict[str, Callable[[CollectionState], bool]] = {
            Regions.t2.name:
                lambda state: state.has("Unlock Next Track", player, 1),

            Regions.t3.name:
                lambda state: state.has("Unlock Next Track", player, 2),

            Regions.t4.name:
                lambda state: state.has("Unlock Next Track", player, 3),

            Regions.t5.name:
                lambda state: state.has("Unlock Next Track", player, 4),

            Regions.t6.name:
                lambda state: state.has("Unlock Next Track", player, 5),

            Regions.t7.name:
                lambda state: state.has("Unlock Next Track", player, 6),
            
            Regions.t8.name:
                lambda state: state.has("Unlock Next Track", player, 7),
            
            Regions.t9.name:
                lambda state: state.has("Unlock Next Track", player, 8),
            
            Regions.t10.name:
                lambda state: state.has("Unlock Next Track", player, 9),

            Regions.t11.name:
                lambda state: state.has("Unlock Next Track", player, 10),

            Regions.t12.name:
                unlock_track_12,
        }

        location_rules: Dict[str, Callable[[CollectionState], bool]] = {
            "Store - Attacks: Arpeggio Stab":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Shred":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Staccato Launch":
                lambda state: (
                    rock_comic_c(state)
                    and state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Gain Tornado":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Quick Beat Hit":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Steal Counter":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            "Store - Attacks: Magnet Backstab":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            "Store - Attacks: Air Parry":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            "Store - Attacks: Directional Parry":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            "Store - Attacks: Switch Kicker":
                peppermint,

            "Store - Attacks: Master Blaster":
                peppermint,

            "Store - Attacks: Double Bass Drop":
                macaron,

            "Store - Attacks: High Strung":
                macaron,

            "Store - Attacks: High Security Risk":
                korsica,

            "Store - Attacks: Tornado Lift":
                korsica,

            "Store - Attacks: Cannon Spike":
                peppermint,

            "Store - Attacks: Gravity Well":
                macaron,

            "Store - Attacks: Korsica Typhoon":
                korsica,

            "Store - Attacks: Kick Shot":
                lambda state: (
                    peppermint(state)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            "Store - Attacks: Love Tap":
                macaron,

            "Store - Attacks: High Alert":
                korsica,

            "Track 1: Broken Armstrong Circuit #1":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 1: Broken Armstrong Circuit #2":
                lambda state: (
                    macaron(state)
                    and korsica(state)
                ),

            "Track 1: Broken Armstrong Circuit #3":
                korsica,

            "Track 2: Broken Armstrong Circuit #1":
                lambda state: (
                    magnet(state)
                    and macaron(state)
                ),

            "Track 2: Rock Comic":
                magnet,

            "Track 2: Broken Armstrong Circuit #2":
                lambda state: (
                    magnet(state)
                    and korsica(state)
                ),

            "Track 2: Electric Reverb Core Piece #2":
                magnet,

            "Track 2: Life Gauge Piece #1":
                magnet,

            "Track 2: Broken Armstrong Circuit #3":
                lambda state: (
                    magnet(state)
                    and korsica(state)
                ),

            "Track 2: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and macaron(state)
                ),

            "Track 2: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                    and korsica(state)
                ),

            "Track 2: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 2: Completed":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Armstrong Circuit #1":
                peppermint,

            "Track 3: Broken Armstrong Circuit #2":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Piece of a Health Tank":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Armstrong Circuit #3":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Electric Reverb Core Piece #1":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 3: Life Gauge Piece #1":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Electric Reverb Core Piece #2":
                lambda state: (
                    magnet(state)
                    and peppermint(state)
                ),

            "Track 3: Broken Armstrong Circuit #6":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 3: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 3: Rock Comic":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 3: Life Gauge Piece #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 3: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 4: Broken Armstrong Circuit #1":
                macaron,

            "Track 4: Broken Armstrong Circuit #2":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                ),

            "Track 4: Broken Piece of a Health Tank #1":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                ),

            "Track 4: Life Gauge Piece #1":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                ),

            "Track 4: Broken Armstrong Circuit #3":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                ),

            "Track 4: Broken Armstrong Circuit #4":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                ),

            "Track 4: Life Gauge Piece #2":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                ),

            "Track 4: Broken Armstrong Circuit #5":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                ),

            "Track 4: Broken Armstrong Circuit #6":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                    and parry(state)
                ),

            "Track 4: Broken Piece of a Health Tank #2":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                    and parry(state)
                ),

            "Track 4: Life Gauge Piece #3":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                    and parry(state)
                ),

            "Track 4: Completed":
                lambda state: (
                    macaron(state)
                    and peppermint(state)
                    and magnet(state)
                    and parry(state)
                ),

            "Track 5: Broken Armstrong Circuit #1":
                parry,

            "Track 5: Broken Armstrong Circuit #2":
                parry,

            "Track 5: Broken Armstrong Circuit #3":
                parry,

            "Track 5: Electric Reverb Core Piece #1":
                parry,

            "Track 5: Rock Comic":
                parry,

            "Track 5: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 5: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 5: Electric Reverb Core Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 5: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 5: Broken Armstrong Circuit #6":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),
            
            "Track 5: Broken Armstrong Circuit #7":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 5: Broken Armstrong Circuit #8":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 5: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                ),

            "Track 6: Completed":
                lambda state: (
                    parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #1":
                lambda state: (
                    parry(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Life Gauge Piece #1":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Piece of a Health Tank":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Electric Reverb Core Piece":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Life Gauge Piece #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 7: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Rock Comic":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #6":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #7":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Broken Armstrong Circuit #8":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 7: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 8: Broken Armstrong Circuit #2":
                korsica,

            "Track 8: Broken Piece of a Health Tank #1":
                lambda state: (
                    magnet(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Electric Reverb Core Piece #1":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Life Gauge Piece #1":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Piece of a Health Tank #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Electric Reverb Core Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #6":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #7":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Life Gauge Piece #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Broken Armstrong Circuit #8":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 8: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 9: Completed":
                lambda state: (
                    parry(state)
                    and korsica(state)
                ),

            "Track 10: Broken Armstrong Circuit #1":
                lambda state: (
                    parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 10: Life Gauge Piece #1":
                lambda state: (
                    parry(state)
                    and peppermint(state)
                    and macaron(state)
                ),

            "Track 10: Broken Armstrong Circuit #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Broken Armstrong Circuit #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Life Gauge Piece #2":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Broken Armstrong Circuit #4":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Life Gauge Piece #3":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Broken Armstrong Circuit #5":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Broken Piece of a Health Tank":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Electric Reverb Core Piece":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Broken Armstrong Circuit #6":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 10: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 11: Completed":
                lambda state: (
                    magnet(state)
                    and parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                ),

            "Track 12: Completed":
                lambda state: (
                    parry(state)
                    and peppermint(state)
                    and macaron(state)
                    and korsica(state)
                )
        }

        def add_entrance_rule(region_name: str, rule: Callable[[CollectionState], bool], combine: str = "and") -> None:
            add_rule(self.world.get_entrance(f"Menu -> {region_name}"), rule, combine)

        def add_location_rule(loc_name: str, rule: Callable[[CollectionState], bool], combine: str = "and") -> None:
            add_rule(self.world.get_location(loc_name), rule, combine)

        for track, rule in track_rules.items():
            add_entrance_rule(track, rule)

        for location, rule in location_rules.items():
            add_location_rule(location, rule)