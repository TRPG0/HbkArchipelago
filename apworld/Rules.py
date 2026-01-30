from worlds.generic.Rules import add_rule
from BaseClasses import CollectionState
from typing import Callable, Dict, TYPE_CHECKING
from .Regions import Regions


if TYPE_CHECKING:
    from . import HiFiRushWorld
else:
    HiFiRushWorld = object


DEBUG: bool = False


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
        
        def directional_parry(state: CollectionState) -> bool:
            if options.shuffle_chai_attacks:
                return state.has("Directional Parry", player)
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
        
        def circuit(state: CollectionState, count: int) -> bool:
            return state.has("Broken Armstrong Circuit", player, count)
        
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
            # Product003 - XXYYY
            "Store - Attacks: Arpeggio Stab":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product007 - XmY
            "Store - Attacks: Shred":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product008 - C-X
            "Store - Attacks: Staccato Launch":
                lambda state: (
                    rock_comic_c(state)
                    and state.can_reach_region(Regions.t2.name, player)
                ),

            # Product009 - C-Y
            "Store - Attacks: Gain Tornado":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product010 - Q-X
            "Store - Attacks: Quick Beat Hit":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product011 - Q-Y
            "Store - Attacks: Steal Counter":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            # Product012 - MagnetBackstab
            "Store - Attacks: Magnet Backstab":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product013 - AirParry
            "Store - Attacks: Air Parry":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            # Product014 - DirectionalParry
            "Store - Attacks: Directional Parry":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                ),

            # Product015 - JamCombo.PG01
            "Store - Attacks: Switch Kicker":
                peppermint,

            # Product016 - JamCombo.PA01
            "Store - Attacks: Master Blaster":
                peppermint,

            # Product017 - JamCombo.MG01
            "Store - Attacks: Double Bass Drop":
                macaron,

            # Product018 - JamCombo.MA01
            "Store - Attacks: High Strung":
                macaron,

            # Product019 - JamCombo.KG01
            "Store - Attacks: High Security Risk":
                korsica,

            # Product020 - JamCombo.KA01
            "Store - Attacks: Tornado Lift":
                korsica,

            # Product021 - Charge.P01
            "Store - Attacks: Cannon Spike":
                peppermint,

            # Product022 - Charge.M01
            "Store - Attacks: Gravity Well":
                macaron,

            # Product023 - Charge.K01
            "Store - Attacks: Korsica Typhoon":
                korsica,

            # Product024 - Counter.P01
            "Store - Attacks: Kick Shot":
                lambda state: (
                    peppermint(state)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product025 - Counter.M01
            "Store - Attacks: Love Tap":
                macaron,

            # Product026 - Counter.K01
            "Store - Attacks: High Alert":
                korsica,

            # Product027 - 020
            "Store - Special Attacks: Guitar Ride":
                rock_comic_a,

            # Product029 - 040
            "Store - Special Attacks: Pick Slide":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product030 - 050
            "Store - Special Attacks: High Pitch Punch":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product031 - 060
            "Store - Special Attacks: Air Guitar":
                rock_comic_b,

            # Product033 - 080
            "Store - Special Attacks: Rip and Tear":
                rock_comic_d,

            # Product034 - 310
            "Store - Special Attacks: Double Riff":
                peppermint,

            # Product036 - 330
            "Store - Special Attacks: Barrier Wall":
                macaron,

            # Product037 - 340
            "Store - Special Attacks: Twin Assault":
                korsica,

            # Product038 - 350
            "Store - Special Attacks: Steal the Show":
                lambda state: (
                    state.can_reach_region(Regions.t9.name, player)
                ),

            # Product039 - 360
            "Store - Special Attacks: Holo-Chai":
                lambda state: (
                    state.can_reach_region(Regions.t4.name, player)
                ),

            # Product040 - 610
            "Store - Special Attacks: Hibiki!":
                lambda state: (
                    state.can_reach_region(Regions.t4.name, player)
                ),

            # TODO: make this unlock at end of t11 instead
            # Product044 - 910
            "Store - Special Attacks: 808-Gigawatt Cat-attack":
                lambda state: (
                    state.can_reach_region(Regions.t12.name, player)
                ),

            # Product056 - ChipSlot
            "Store - Items: Additional Chip Slot #1":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product057 - ChipSlot
            "Store - Items: Additional Chip Slot #2":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product058 - ChipSlot
            "Store - Items: Additional Chip Slot #3":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product059 - ChipSlot
            "Store - Items: Additional Chip Slot #4":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # circuit logic is kinda impossible because a lot of circuits come from wall of fame. this is good enough probably though

            # Product061 - CoolTimeP
            # circuit cost: 0
            "Store - Chips: Peppermint Compatibility Lv.1":
                lambda state: (
                    state.can_reach_region(Regions.t2.name, player)
                ),

            # Product062 - CoolTimeP
            "Store - Chips: Peppermint Compatibility Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Peppermint Compatibility Lv.1", player)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product063 - CoolTimeP
            "Store - Chips: Peppermint Compatibility Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Peppermint Compatibility Lv.2", player)
                ),

            # Product064 - RecoveryUp
            # circuit cost: 2
            "Store - Chips: Health Kick Lv.1":
                lambda state: (
                    circuit(state, 7)
                    and state.can_reach_region(Regions.t2.name, player)
                ),

            # Product065 - RecoveryUp
            "Store - Chips: Health Kick Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Health Kick Lv.1", player)
                ),

            # Product066 - RecoveryUp
            "Store - Chips: Health Kick Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Health Kick Lv.2", player)
                ),

            # Product067 - BatteryUp
            # circuit cost: 2
            "Store - Chips: Battery Magnet Lv.1":
                lambda state: (
                    circuit(state, 7)
                    and state.can_reach_region(Regions.t2.name, player)
                ),

            # Product068 - BatteryUp
            "Store - Chips: Battery Magnet Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Battery Magnet Lv.1", player)
                ),

            # Product069 - BatteryUp
            "Store - Chips: Battery Magnet Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Battery Magnet Lv.2", player)
                ),

            # Product070 - RhythmMeterUp
            # circuit cost: 3
            "Store - Chips: Rhythm Meter Rush Lv.1":
                lambda state: (
                    circuit(state, 7)
                    and state.can_reach_region(Regions.t2.name, player)
                ),

            # Product071 - RhythmMeterUp
            "Store - Chips: Rhythm Meter Rush Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Rhythm Meter Rush Lv.1", player)
                ),

            # Product072 - RhythmMeterUp
            "Store - Chips: Rhythm Meter Rush Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Rhythm Meter Rush Lv.2", player)
                ),

            # Product073 - ParryHealth
            # circuit cost: 4
            "Store - Chips: Parry Health Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product074 - ParryHealth
            "Store - Chips: Parry Health Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Parry Health Lv.1", player)
                ),

            # Product075 - ParryHealth
            "Store - Chips: Parry Health Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Parry Health Lv.2", player)
                ),

            # Product076 - ParryBattery
            # circuit cost: 4
            "Store - Chips: Parry Charge Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product077 - ParryBattery
            "Store - Chips: Parry Charge Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Parry Charge Lv.1", player)
                ),

            # Product078 - ParryBattery
            "Store - Chips: Parry Charge Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Parry Charge Lv.2", player)
                ),

            # Product079 - DirectionalParryInvincible
            # circuit cost: 5
            "Store - Chips: Invincible D-Parry Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                    and directional_parry(state)
                ),

            # Product080 - DirectionalParryInvincible
            "Store - Chips: Invincible D-Parry Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Invincible D-Parry Lv.1", player)
                ),

            # Product081 - DirectionalParryInvincible
            "Store - Chips: Invincible D-Parry Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Invincible D-Parry Lv.2", player)
                ),

            # Product082 - DirectionalParryDamage
            # circuit cost: 5
            "Store - Chips: Damage Rebound D-Parry Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                    and directional_parry(state)
                ),

            # Product083 - DirectionalParryDamage
            "Store - Chips: Damage Rebound D-Parry Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Damage Rebound D-Parry Lv.1", player)
                ),

            # Product084 - DirectionalParryDamage
            "Store - Chips: Damage Rebound D-Parry Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Damage Rebound D-Parry Lv.2", player)
                ),

            # Product085 - ComboDurationUp
            # circuit cost: 2
            "Store - Chips: Combo Holder Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product086 - ComboDurationUp
            "Store - Chips: Combo Holder Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Combo Holder Lv.1", player)
                ),

            # Product087 - ComboDurationUp
            "Store - Chips: Combo Holder Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Combo Holder Lv.2", player)
                ),

            # Product091 - ItemAbsorbUp
            # circuit cost: 3
            "Store - Chips: Rhythm Dodge Pull Plus Lv.1":
                lambda state: (
                    circuit(state, 30)
                    and state.can_reach_region(Regions.t3.name, player)
                ),

            # Product092 - ItemAbsorbUp
            "Store - Chips: Rhythm Dodge Pull Plus Lv.2":
                lambda state: (
                    state.can_reach_location("Store - Chips: Rhythm Dodge Pull Plus Lv.1", player)
                ),

            # Product093 - ItemAbsorbUp
            "Store - Chips: Rhythm Dodge Pull Plus Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Rhythm Dodge Pull Plus Lv.2", player)
                ),

            # Product094 - ItemAbsorbCancelInBattle
            # circuit cost: 3
            "Store - Chips: Rhythm Dodge Pull Cancel":
                lambda state: (
                    circuit(state, 40)
                    and state.can_reach_region(Regions.t2.name, player)
                    and macaron(state)
                ),

            # Product095 - ForceQuickCallPartner
            # circuit cost: 4
            "Store - Chips: Instant Partner Recharge":
                lambda state: (
                    circuit(state, 40)
                    and state.can_reach_region(Regions.t2.name, player)
                    and macaron(state)
                ),

            # Product096 - P_DownTimeUp
            # circuit cost: 3
            "Store - Chips: Peppermint Shock Advantage Lv.1":
                lambda state: (
                    circuit(state, 15)
                    and state.can_reach_region(Regions.t2.name, player)
                    and peppermint(state)
                ),

            # Product097 - P_DownTimeUp
            "Store - Chips: Peppermint Shock Advantage Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Peppermint Shock Advantage Lv.1", player)
                ),

            # Product098 - P_DownTimeUp
            "Store - Chips: Peppermint Shock Advantage Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Peppermint Shock Advantage Lv.2", player)
                ),

            # Product099 - P_ElectricEnemy
            # circuit cost: 5
            "Store - Chips: Peppermint Shock Jump Lv.1":
                lambda state: (
                    circuit(state, 15)
                    and state.can_reach_region(Regions.t2.name, player)
                    and peppermint(state)
                ),

            # Product100 - P_ElectricEnemy
            "Store - Chips: Peppermint Shock Jump Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Peppermint Shock Jump Lv.1", player)
                ),

            # Product101 - P_ElectricEnemy
            "Store - Chips: Peppermint Shock Jump Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Peppermint Shock Jump Lv.2", player)
                ),

            # Product102 - CoolTimeM
            # circuit cost: 3
            "Store - Chips: Macaron Compatibility Lv.1":
                lambda state: (
                    circuit(state, 40)
                    and state.can_reach_region(Regions.t2.name, player)
                    and macaron(state)
                ),

            # Product103 - CoolTimeM
            "Store - Chips: Macaron Compatibility Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Macaron Compatibility Lv.1", player)
                ),

            # Product104 - CoolTimeM
            "Store - Chips: Macaron Compatibility Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Macaron Compatibility Lv.2", player)
                ),

            # Product105 - M_LuckyShieldDamage
            # circuit cost: 2
            "Store - Chips: Macaron's Lucky Punch Lv.1":
                lambda state: (
                    circuit(state, 40)
                    and state.can_reach_region(Regions.t2.name, player)
                    and macaron(state)
                ),

            # Product106 - M_LuckyShieldDamage
            "Store - Chips: Macaron's Lucky Punch Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Macaron's Lucky Punch Lv.1", player)
                ),

            # Product107 - M_LuckyShieldDamage
            "Store - Chips: Macaron's Lucky Punch Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Macaron's Lucky Punch Lv.2", player)
                ),

            # Product108 - M_WaveRangeUp
            # circuit cost: 3
            "Store - Chips: Macaron's Aftershock Lv.1":
                lambda state: (
                    circuit(state, 40)
                    and state.can_reach_region(Regions.t2.name, player)
                    and macaron(state)
                ),

            # Product109 - M_WaveRangeUp
            "Store - Chips: Macaron's Aftershock Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Macaron's Aftershock Lv.1", player)
                ),

            # Product110 - M_WaveRangeUp
            "Store - Chips: Macaron's Aftershock Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Macaron's Aftershock Lv.2", player)
                ),

            # Product111 - CoolTimeK
            # circuit cost: 3
            "Store - Chips: Korsica Compatibility Lv.1":
                lambda state: (
                    circuit(state, 45)
                    and state.can_reach_region(Regions.t2.name, player)
                    and korsica(state)
                ),

            # Product112 - CoolTimeK
            "Store - Chips: Korsica Compatibility Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Korsica Compatibility Lv.1", player)
                ),

            # Product113 - CoolTimeK
            "Store - Chips: Korsica Compatibility Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Korsica Compatibility Lv.2", player)
                ),

            # Product114 - K_FloatingTimeUp
            # circuit cost: 3
            "Store - Chips: Super High Alert Lv.1":
                lambda state: (
                    circuit(state, 45)
                    and state.can_reach_region(Regions.t2.name, player)
                    and korsica(state)
                ),

            # Product115 - K_FloatingTimeUp
            "Store - Chips: Super High Alert Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Super High Alert Lv.1", player)
                ),

            # Product116 - K_FloatingTimeUp
            "Store - Chips: Super High Alert Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Super High Alert Lv.2", player)
                ),

            # Product117 - K_DebuffTimeUp
            # circuit cost: 6
            "Store - Chips: Korsica Stun Extend Lv.1":
                lambda state: (
                    circuit(state, 45)
                    and state.can_reach_region(Regions.t2.name, player)
                    and korsica(state)
                ),

            # Product118 - K_DebuffTimeUp
            "Store - Chips: Korsica Stun Extend Lv.2":
                lambda state: (
                    state.can_reach_region(Regions.t3.name, player)
                    and state.can_reach_location("Store - Chips: Korsica Stun Extend Lv.1", player)
                ),

            # Product119 - K_DebuffTimeUp
            "Store - Chips: Korsica Stun Extend Lv.3":
                lambda state: (
                    state.can_reach_location("Store - Chips: Korsica Stun Extend Lv.2", player)
                ),

            #"Track 1: Item from SEB-AAA":
            #    lambda state: (
            #        magnet(state)
            #        and peppermint(state)
            #    ),

            "Track 1: Broken Armstrong Circuit #1":
                lambda state: (
                    macaron(state)
                    and korsica(state)
                ),

            "Track 1: Broken Armstrong Circuit #2":
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
            if loc_name not in self.world.location_names and loc_name != "Track 12: Completed":
                raise KeyError(f"\"{loc_name}\" is not a valid location name.")
            try:
                add_rule(self.world.get_location(loc_name), rule, combine)
            except KeyError:
                if DEBUG:
                    print(f"[P{player} - {self.world.player_name}] "
                          f"No location found for name \"{loc_name}\".")

        for track, rule in track_rules.items():
            add_entrance_rule(track, rule)

        for location, rule in location_rules.items():
            add_location_rule(location, rule)