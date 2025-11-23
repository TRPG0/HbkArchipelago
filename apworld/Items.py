from typing import List
from dataclasses import dataclass
from enum import Enum
from BaseClasses import ItemClassification as IC


class HbkItemType(Enum):
    Track = 1
    Ability = 2
    Collectible = 3
    Attack = 4
    Partner = 5
    SpecialAttack = 6
    Chip = 7
    VLog = 8
    Gears = 9


@dataclass
class HbkItem:
    name: str
    item_type: HbkItemType
    classification: IC
    count: int = 1


item_list: List[HbkItem] = [
    HbkItem("Unlock Next Track", HbkItemType.Track, IC.progression, 10),
    HbkItem("Track 2", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 3", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 4", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 5", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 6", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 7", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 8", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 9", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 10", HbkItemType.Track, IC.progression, 0),
    HbkItem("Track 11", HbkItemType.Track, IC.progression, 0),

    HbkItem("Air Dash", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Air Parry", HbkItemType.Ability, IC.useful),
    HbkItem("Beat Hit", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Directional Parry", HbkItemType.Ability, IC.useful),
    HbkItem("Dash", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Magnet Grab", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Magnet Backstab", HbkItemType.Ability, IC.useful),
    HbkItem("Parry", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Rhythm Dodge", HbkItemType.Ability, IC.progression, 0),
    HbkItem("Special Attack", HbkItemType.Ability, IC.progression, 0),

    HbkItem("Broken Armstrong Circuit", HbkItemType.Collectible, IC.filler, 52),
    HbkItem("Life Gauge Piece", HbkItemType.Collectible, IC.filler, 23),
    HbkItem("Life Gauge", HbkItemType.Collectible, IC.filler, 0), #6
    HbkItem("Broken Piece of a Health Tank", HbkItemType.Collectible, IC.filler, 8),
    HbkItem("Health Tank", HbkItemType.Collectible, IC.filler, 0), #1
    HbkItem("Electric Reverb Core Piece", HbkItemType.Collectible, IC.filler, 11),
    HbkItem("Electric Reverb Core", HbkItemType.Collectible, IC.filler, 0), #3
    HbkItem("Additional Chip Slot", HbkItemType.Collectible, IC.filler, 0), #4
    HbkItem("Special Attack Slot Upgrade", HbkItemType.Collectible, IC.filler, 0), #1
    HbkItem("Rock Comic A", HbkItemType.Collectible, IC.useful), #Guitar Ride - SpecialAttack.020
    HbkItem("Rock Comic B", HbkItemType.Collectible, IC.useful), #Air Guitar - SpecialAttack.060
    HbkItem("Rock Comic C", HbkItemType.Collectible, IC.progression), #Staccato Launch - Combo.C-X
    HbkItem("Rock Comic D", HbkItemType.Collectible, IC.useful), #Rip and Tear - SpecialAttack.080

    HbkItem("Air Countdown", HbkItemType.Attack, IC.useful, 0), #AirXXXX
    HbkItem("Compressor Slam", HbkItemType.Attack, IC.useful), #AirXYXY
    HbkItem("Harmonic Beam", HbkItemType.Attack, IC.useful), #AirXYYY
    HbkItem("Hammer-On", HbkItemType.Attack, IC.useful, 0), #AirY
    HbkItem("Staccato Launch", HbkItemType.Attack, IC.useful), #C-X
    HbkItem("Gain Tornado", HbkItemType.Attack, IC.useful), #C-Y
    HbkItem("Dash Attack", HbkItemType.Attack, IC.useful, 0), #D-X
    HbkItem("Air Launch", HbkItemType.Attack, IC.useful, 0), #D-Y
    HbkItem("Quick Beat Hit", HbkItemType.Attack, IC.useful), #Q-X
    HbkItem("Steal Counter", HbkItemType.Attack, IC.useful), #Q-Y
    HbkItem("Rise Up", HbkItemType.Attack, IC.useful, 0), #X-XX
    HbkItem("Shred", HbkItemType.Attack, IC.useful), #XmY
    HbkItem("Tune Up", HbkItemType.Attack, IC.useful), #XX-XXX
    HbkItem("Humbucker", HbkItemType.Attack, IC.useful, 0), #XXXX
    HbkItem("Arpeggio Stab", HbkItemType.Attack, IC.useful), #XXYYY
    HbkItem("Echo Splash", HbkItemType.Attack, IC.useful), #XYXXX
    HbkItem("Breakdown", HbkItemType.Attack, IC.useful, 0), #XYY
    HbkItem("Tremolo", HbkItemType.Attack, IC.useful, 0), #YXX
    HbkItem("Stomp Box", HbkItemType.Attack, IC.useful), #YXY
    HbkItem("Pickup Crash", HbkItemType.Attack, IC.useful), #YYX
    HbkItem("Grandslam", HbkItemType.Attack, IC.useful, 0), #YYY

    HbkItem("Peppermint", HbkItemType.Partner, IC.progression, 0),
    HbkItem("Macaron", HbkItemType.Partner, IC.progression, 0),
    HbkItem("Korsica", HbkItemType.Partner, IC.progression, 0),

    HbkItem("Cannon Spike", HbkItemType.Attack, IC.useful), #Charge.P01
    HbkItem("Kick Shot", HbkItemType.Attack, IC.useful), #Counter.P01
    HbkItem("Switch Kicker", HbkItemType.Attack, IC.useful), #JamCombo.PG01
    HbkItem("Master Blaster", HbkItemType.Attack, IC.useful), #JamCombo.PA01
    HbkItem("Gravity Well", HbkItemType.Attack, IC.useful), #Charge.M01
    HbkItem("Love Tap", HbkItemType.Attack, IC.useful), #Counter.M01
    HbkItem("Double Bass Drop", HbkItemType.Attack, IC.useful), #JamCombo.MG01
    HbkItem("High Strung", HbkItemType.Attack, IC.useful), #JamCombo.MA01
    HbkItem("Korsica Typhoon", HbkItemType.Attack, IC.useful), #Charge.K01
    HbkItem("High Alert", HbkItemType.Attack, IC.useful), #Counter.K01
    HbkItem("High Security Risk", HbkItemType.Attack, IC.useful), #JamCombo.KG01
    HbkItem("Tornado Lift", HbkItemType.Attack, IC.useful), #JamCombo.KA01

    HbkItem("Power Chord", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.010
    HbkItem("Guitar Ride", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.020
    HbkItem("Pick Me Up!", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.030
    HbkItem("Pick Slide", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.040
    HbkItem("High Pitch Punch", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.050
    HbkItem("Air Guitar", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.060
    HbkItem("Rip and Tear", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.080
    HbkItem("Double Riff", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.310
    HbkItem("Barrier Wall", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.330
    HbkItem("Twin Assault", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.340
    HbkItem("Steal the Show", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.350
    HbkItem("Holo-Chai", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.360
    HbkItem("Hibiki!", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.610
    HbkItem("Overdrive Slash", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.620
    HbkItem("808-Gigawatt Cat-attack", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.910
    HbkItem("CNMANIAC", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.1010
    HbkItem("My Hero!", HbkItemType.SpecialAttack, IC.useful, 0), #SpecialAttack.1020

    HbkItem("Battery Magnet", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Combo Holder", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Korsica Compatibility", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Macaron Compatibility", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Peppermint Compatibility", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Damage Rebound D-Parry", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Invincible D-Parry", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Chip Sense", HbkItemType.Chip, IC.useful, 0), #1
    HbkItem("Instant Partner Recharge", HbkItemType.Chip, IC.useful, 0), #1
    HbkItem("Gear Increase", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Rhythm Dodge Pull Cancel", HbkItemType.Chip, IC.useful, 0), #1
    HbkItem("Rhythm Dodge Pull Plus", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Korsica Stun Extend", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Super High Alert", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Macaron's Lucky Punch", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Macaron's Aftershock", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Peppermint Shock Advantage", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Peppermint Shock Jump", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Parry Charge", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Parry Health", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Health Kick", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Rhythm Meter Rush", HbkItemType.Chip, IC.useful, 0), #3
    HbkItem("Enemy Analyze", HbkItemType.Chip, IC.useful, 0), #1
    HbkItem("High Risk, High Return", HbkItemType.Chip, IC.useful, 0), #3

    HbkItem('VLog #1: "TO ALL EMPLOYEES!"', HbkItemType.VLog, IC.filler), #VLog.0000
    HbkItem('VLog #2: "Battery Pack Production"', HbkItemType.VLog, IC.filler), #VLog.0010
    HbkItem('VLog #3: "Old-gen EOL Reminder"', HbkItemType.VLog, IC.filler), #VLog.0020
    HbkItem('VLog #4: "RE:RE:RE:RE:RE:RE:RE: Get on this!"', HbkItemType.VLog, IC.filler), #VLog.0030
    HbkItem('VLog #5: "05-KAR Unit Musings"', HbkItemType.VLog, IC.filler), #VLog.0040
    HbkItem('VLog #6: "Unsent Complaint"', HbkItemType.VLog, IC.filler), #VLog.0050
    HbkItem('VLog #7: "HR Auto-Surveillance Recording"', HbkItemType.VLog, IC.filler), #VLog.0060
    HbkItem('VLog #8: "HR Claim #324839028555180850195"', HbkItemType.VLog, IC.filler), #VLog.0070
    HbkItem('VLog #9: "Tram Line Issues"', HbkItemType.VLog, IC.filler), #VLog.0080
    HbkItem('VLog #10: "Introducing "The Arrow!""', HbkItemType.VLog, IC.filler), #VLog.0090
    HbkItem('VLog #11: "Behind the Showmanship: Sitdown with Rekka"', HbkItemType.VLog, IC.filler), #VLog.0100
    HbkItem('VLog #12: "R&D Service Log: Part 1"', HbkItemType.VLog, IC.filler), #VLog.0110
    HbkItem('VLog #13: "R&D Service Log: Part 2"', HbkItemType.VLog, IC.filler), #VLog.0120
    HbkItem('VLog #14: "R&D Service Log: Part 3"', HbkItemType.VLog, IC.filler), #VLog.0130
    HbkItem('VLog #15: "R&D Service Log: Part 4"', HbkItemType.VLog, IC.filler), #VLog.0140
    HbkItem('VLog #16: "Zanzo\'s Order Request"', HbkItemType.VLog, IC.filler), #VLog.0150
    HbkItem('VLog #17: "LU-C1LLE Self-Therapy Journal"', HbkItemType.VLog, IC.filler), #VLog.0160
    HbkItem('VLog #18: "Barrier Technology Test Results"', HbkItemType.VLog, IC.filler), #VLog.0170
    HbkItem('VLog #19: "Punch-to-face Test Results"', HbkItemType.VLog, IC.filler), #VLog.0180
    HbkItem('VLog #20: "Offensive Capabilities Test"', HbkItemType.VLog, IC.filler), #VLog.0190
    HbkItem('VLog #21: "Barrier Umbrella Test"', HbkItemType.VLog, IC.filler), #VLog.0200
    HbkItem('VLog #22: "Test Lab Assistance Mail"', HbkItemType.VLog, IC.filler), #VLog.0210
    HbkItem('VLog #23: "Staffing Allocation Complaint"', HbkItemType.VLog, IC.filler), #VLog.0220
    HbkItem('VLog #24: "Auto-Saved Private Message"', HbkItemType.VLog, IC.filler), #VLog.0230
    HbkItem('VLog #25: "Disgruntled Decaf Revenge"', HbkItemType.VLog, IC.filler), #VLog.0240
    HbkItem('VLog #26: "Development Mindfulness Checklist"', HbkItemType.VLog, IC.filler), #VLog.0250
    HbkItem('VLog #27: "Defect Captured Email"', HbkItemType.VLog, IC.filler), #VLog.0260
    HbkItem('VLog #28: "Annoyed by Korsica FWD"', HbkItemType.VLog, IC.filler), #VLog.0270
    HbkItem('VLog #29: "Musings About Data Node"', HbkItemType.VLog, IC.filler), #VLog.0280
    HbkItem('VLog #30: "Poem by SCR-UB"', HbkItemType.VLog, IC.filler), #VLog.0290
    HbkItem('VLog #31: "Vandelay Game Studios?"', HbkItemType.VLog, IC.filler), #VLog.0300
    HbkItem('VLog #32: "Regarding Wing 1 Layout Complaints"', HbkItemType.VLog, IC.filler), #VLog.0310
    HbkItem('VLog #33: "FWD: Data Node Advice"', HbkItemType.VLog, IC.filler), #VLog.0320
    HbkItem('VLog #34: "Korsica Complaints"', HbkItemType.VLog, IC.filler), #VLog.0330
    HbkItem('VLog #35: "L.I.F.T. Construction Heads-up"', HbkItemType.VLog, IC.filler), #VLog.0340
    HbkItem('VLog #36: "Platform Construction Note"', HbkItemType.VLog, IC.filler), #VLog.0350
    HbkItem('VLog #37: "Too Many Rooms"', HbkItemType.VLog, IC.filler), #VLog.0360
    HbkItem('VLog #38: "Suspicious Doors?"', HbkItemType.VLog, IC.filler), #VLog.0370
    HbkItem('VLog #39: "Data Node Dissatisfaction Mail"', HbkItemType.VLog, IC.filler), #VLog.0380
    HbkItem('VLog #40: "Pmidge Press Announcement"', HbkItemType.VLog, IC.filler), #VLog.0390
    HbkItem('VLog #41: "Depressed Buttons"', HbkItemType.VLog, IC.filler), #VLog.0400
    HbkItem('VLog #42: "Food Delivery Warning"', HbkItemType.VLog, IC.filler), #VLog.0410
    HbkItem('VLog #43: "Project Armstrong Raffle Results"', HbkItemType.VLog, IC.filler), #VLog.0420
    HbkItem('VLog #44: "Armstrong Festival Marketing?"', HbkItemType.VLog, IC.filler), #VLog.0430
    HbkItem('VLog #45: "Charging"', HbkItemType.VLog, IC.filler), #VLog.0440
    HbkItem('VLog #46: "Taking A Break In The Park"', HbkItemType.VLog, IC.filler), #VLog.0450
    HbkItem('VLog #47: "GNR-020 Display"', HbkItemType.VLog, IC.filler), #VLog.0460
    HbkItem('VLog #48: "BES-102 Display"', HbkItemType.VLog, IC.filler), #VLog.0470
    HbkItem('VLog #49: "BL-1Z5 Display"', HbkItemType.VLog, IC.filler), #VLog.0480
    HbkItem('VLog #50: "SBR-001 Display"', HbkItemType.VLog, IC.filler), #VLog.0490
    HbkItem('VLog #51: "ES-101 Display"', HbkItemType.VLog, IC.filler), #VLog.0500
    HbkItem('VLog #52: "BA-B00 Display"', HbkItemType.VLog, IC.filler), #VLog.0510
    HbkItem('VLog #53: "Reminder to Reception"', HbkItemType.VLog, IC.filler), #VLog.0520
    HbkItem('VLog #54: "BRUT-1L Display"', HbkItemType.VLog, IC.filler), #VLog.0530
    HbkItem('VLog #55: "Our Community Helper: BA-B00"', HbkItemType.VLog, IC.filler), #VLog.0540
    HbkItem('VLog #56: "SEN-C0 Display"', HbkItemType.VLog, IC.filler), #VLog.0550
    HbkItem('VLog #57: "Disappointed O5-KAR"', HbkItemType.VLog, IC.filler), #VLog.0560
    HbkItem('VLog #58: "Water Generator Complaint"', HbkItemType.VLog, IC.filler), #VLog.0570
    HbkItem('VLog #59: "Display Complaints"', HbkItemType.VLog, IC.filler), #VLog.0580
    HbkItem('VLog #60: "KEM-0N0 Display"', HbkItemType.VLog, IC.filler), #VLog.0590
    HbkItem('VLog #61: "SBR Development Display"', HbkItemType.VLog, IC.filler), #VLog.0600
    HbkItem('VLog #62: "Door Musings From SCR-UB"', HbkItemType.VLog, IC.filler), #VLog.0610
    HbkItem('VLog #63: "Armstrong Festival Briefing Notes"', HbkItemType.VLog, IC.filler), #VLog.0620
    HbkItem('VLog #64: "Mimosa\'s Rider"', HbkItemType.VLog, IC.filler), #VLog.0630
    HbkItem('VLog #65: "Cafeteria Menu"', HbkItemType.VLog, IC.filler), #VLog.0640
    HbkItem('VLog #66: "Vandelay Grammar Check"', HbkItemType.VLog, IC.filler), #VLog.0650
    HbkItem('VLog #67: "Atrium Statue Mail"', HbkItemType.VLog, IC.filler), #VLog.0660
    HbkItem('VLog #68: "Budget Challenge Mail"',  HbkItemType.VLog, IC.filler), #VLog.0670
    HbkItem('VLog #69: "Hoodie Preorder Mail"', HbkItemType.VLog, IC.filler), #VLog.0680
    HbkItem('VLog #70: "Vandelay Handbook Note"', HbkItemType.VLog, IC.filler), #VLog.0690
    HbkItem('VLog #71: "Roquefort Meeting Prep"', HbkItemType.VLog, IC.filler), #VLog.0700
    HbkItem('VLog #72: "My Super Secret Plan"', HbkItemType.VLog, IC.filler, 0), #VLog.0710
    HbkItem('VLog #73: "Preorder Bonuses?"', HbkItemType.VLog, IC.filler, 0), #VLog.0720
    HbkItem('VLog #74: "Potential Project Musings"', HbkItemType.VLog, IC.filler, 0), #VLog.0730
    HbkItem('VLog #75: "Shot in the Eye"', HbkItemType.VLog, IC.filler, 0), #VLog.0740
    HbkItem('VLog #76: "Out Of My Mind"', HbkItemType.VLog, IC.filler, 0), #VLog.0750
    HbkItem('VLog #77: "Never Ask For Ideas"', HbkItemType.VLog, IC.filler, 0), #VLog.0760
    HbkItem('Vandelay Gameworks VLog #1: "WELCOME TO VANDELAY GAMEWORKS!"', HbkItemType.VLog, IC.filler, 0), #VLog.5010
    HbkItem('Vandelay Gameworks VLog #2: "INFINITY GUITARS"', HbkItemType.VLog, IC.filler, 0), #VLog.5020
    HbkItem('Vandelay Gameworks VLog #3: "FROM THE SOUND TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5030
    HbkItem('Vandelay Gameworks VLog #4: "ART DIRECTION"', HbkItemType.VLog, IC.filler, 0), #VLog.5040
    HbkItem('Vandelay Gameworks VLog #5: "FROM THE ART TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5050
    HbkItem('Vandelay Gameworks VLog #6: "INTERNAL PERFECTION"', HbkItemType.VLog, IC.filler, 0), #VLog.5060
    HbkItem('Vandelay Gameworks VLog #7: "FROM THE MODELING TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5070
    HbkItem('Vandelay Gameworks VLog #8: "SCALE UP"', HbkItemType.VLog, IC.filler, 0), #VLog.5080
    HbkItem('Vandelay Gameworks VLog #9: "FROM THE ENVIRONMENT TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5090
    HbkItem('Vandelay Gameworks VLog #10: "AFFECT EFFECT"', HbkItemType.VLog, IC.filler, 0), #VLog.5100
    HbkItem('Vandelay Gameworks VLog #11: "FROM THE VFX TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5110
    HbkItem('Vandelay Gameworks VLog #12: "DOWN TO THE T"', HbkItemType.VLog, IC.filler, 0), #VLog.5120
    HbkItem('Vandelay Gameworks VLog #13: "FROM THE ANIMATION TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5130
    HbkItem('Vandelay Gameworks VLog #14: "LIFE OF ITS OWN"', HbkItemType.VLog, IC.filler, 0), #VLog.5140
    HbkItem('Vandelay Gameworks VLog #15: "FROM THE UI TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5150
    HbkItem('Vandelay Gameworks VLog #16: "HOLDING IT ALL TOGETHER"', HbkItemType.VLog, IC.filler, 0), #VLog.5160
    HbkItem('Vandelay Gameworks VLog #17: "FROM THE PROGRAMMERS"', HbkItemType.VLog, IC.filler, 0), #VLog.5170
    HbkItem('Vandelay Gameworks VLog #18: "I THINK OF IDEAS"', HbkItemType.VLog, IC.filler, 0), #VLog.5180
    HbkItem('Vandelay Gameworks VLog #19: "FROM THE GAME DESIGN TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5190
    HbkItem('Vandelay Gameworks VLog #20: "BY DESIGN"', HbkItemType.VLog, IC.filler, 0), #VLog.5200
    HbkItem('Vandelay Gameworks VLog #21: "GLOBAL READINESS"', HbkItemType.VLog, IC.filler, 0), #VLog.5210
    HbkItem('Vandelay Gameworks VLog #22: "FROM THE LOCALIZATION TEAM"', HbkItemType.VLog, IC.filler, 0), #VLog.5220
    HbkItem('Vandelay Gameworks VLog #23: "OFFICE SPACE"', HbkItemType.VLog, IC.filler, 0), #VLog.5230
    HbkItem('Vandelay Gameworks VLog #24: "PRODUCING PRODUCT"', HbkItemType.VLog, IC.filler, 0), #VLog.5240
    HbkItem('Vandelay Gameworks VLog #25: "FROM PRODUCTION"', HbkItemType.VLog, IC.filler, 0), #VLog.5250
    HbkItem('Vandelay Gameworks VLog #26: "UNDER PRESSURE"', HbkItemType.VLog, IC.filler, 0), #VLog.5260
    HbkItem('Vandelay Gameworks VLog #27: "FROM THE DIRECTOR"', HbkItemType.VLog, IC.filler, 0), #VLog.5270
    HbkItem('Vandelay Gameworks VLog #28: "DM-ET1L DISPLAY"', HbkItemType.VLog, IC.filler, 0), #VLog.5280
    HbkItem('Vandelay Gameworks VLog #29: "FRUIT SERVICE"', HbkItemType.VLog, IC.filler, 0), #VLog.5290
    HbkItem('Vandelay Gameworks VLog #30: "QUIET ON SET"', HbkItemType.VLog, IC.filler, 0), #VLog.5300

    HbkItem("Gears x4,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x5,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x6,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x7,500", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x8,500", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x10,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x12,500", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x15,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x17,500", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x20,000", HbkItemType.Gears, IC.filler, 1),
    HbkItem("Gears x25,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x30,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x35,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x40,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x45,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x50,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x60,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x65,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x80,000", HbkItemType.Gears, IC.filler, 0),
    HbkItem("Gears x100,000", HbkItemType.Gears, IC.filler, 0),
]