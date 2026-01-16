import json
import Utils
from typing import List, Dict, Any
from BaseClasses import MultiWorld, Region, Location, Item, Tutorial, ItemClassification
from worlds.AutoWorld import World, WebWorld
from .Items import item_list, HbkItemType
from .Locations import location_list, HbkLocationType
from .Regions import Regions
from .Rules import HbkRules
from .Options import HbkOptions


class HiFiRushWeb(WebWorld):
    theme = "partyTime"
    tutorials = [Tutorial(
        "Multiworld Setup Guide",
        "A guide for setting up Hi-Fi RUSH randomizer and connecting to an Archipelago Multiworld",
        "English",
        "setup_en.md",
        "setup/en",
        ["TRPG"]
    )]


class HiFiRushWorld(World):
    """Feel the beat as wannabe rockstar Chai and his ragtag team fight against evil megacorp with raucous rhythm combat!"""

    game = "Hi-Fi RUSH"
    web = HiFiRushWeb()

    item_name_to_id = {item.name: index+1 for index, item in enumerate(item_list)}
    location_name_to_id = {location.name: index+1 for index, location in enumerate(location_list)}

    #item_name_groups = 
    options_dataclass = HbkOptions
    options: HbkOptions


    def __init__(self, multiworld, player):
        super(HiFiRushWorld, self).__init__(multiworld, player)
        self.skipped_location_types: List[HbkLocationType] = [
            HbkLocationType.Ability,
            HbkLocationType.Chip,
            HbkLocationType.Graffiti,
            HbkLocationType.Partner,
            HbkLocationType.StoreItem,
            HbkLocationType.SPECTRA,
            HbkLocationType.SpecialAttack,
            HbkLocationType.SubMission,
            HbkLocationType.NPCItem
        ]


    def set_rules(self):
        HbkRules(self).set_rules()


    def create_item(self, name: str) -> "HiFiRushItem":
        classification = ItemClassification.filler
        for i in item_list:
            if i.name == name:
                classification = i.classification
        return HiFiRushItem(name, classification, self.item_name_to_id[name], self.player)


    def create_event(self, event: str) -> "HiFiRushItem":
        return HiFiRushItem(event, ItemClassification.progression_skip_balancing, None, self.player)


    #def get_filler_item_name(self) -> str:
    #    pass


    def generate_early(self):
        if not self.options.vlog_rewards:
            self.skipped_location_types.append(HbkLocationType.VLog)


    def create_items(self):
        pool = []

        for item in item_list:
            count: int = item.count

            if not self.options.vlog_rewards and item.item_type == HbkItemType.VLog:
                count = 0

            if count <= 0:
                continue
            else:
                for _ in range(count):
                    pool.append(self.create_item(item.name))

        self.multiworld.itempool += pool


    def create_regions(self):
        player = self.player
        multiworld = self.multiworld

        menu = Region("Menu", player, multiworld)

        for r in Regions.all_regions:
            multiworld.regions += [Region(r.name, player, multiworld)]
            menu.add_exits({r.name})

        multiworld.regions.append(menu)

        for loc in location_list:
            if loc.loc_type in self.skipped_location_types:
                #print("Skipped " + loc.name)
                continue

            region: Region = self.get_region(loc.region.name)
            location: HiFiRushLocation = HiFiRushLocation(player, loc.name, self.location_name_to_id[loc.name], region)
            region.locations.append(location)

        t12region = self.get_region(Regions.t12.name)
        t12complete = HiFiRushLocation(player, "Track 12: Completed", None, t12region)
        t12complete.place_locked_item(self.create_event("Victory"))
        t12region.locations.append(t12complete)
        multiworld.completion_condition[player] = lambda state: state.has("Victory", player)


    def fill_slot_data(self):
        slot_data: Dict[str, Any] = {
            "Version": self.world_version.as_simple_string(),
            "ServerVersion": Utils.__version__
        }

        self.export_location_json()

        return slot_data


    def export_location_json(self) -> None:
        with open("hbk_loc.json", "w") as file_loc:
            file_loc.write(json.dumps({loc.loc_str: self.location_name_to_id[loc.name] for loc in location_list if loc.loc_str != ""}, indent=4))


class HiFiRushItem(Item):
    game: str = "Hi-Fi RUSH"


class HiFiRushLocation(Location):
    game: str = "Hi-Fi RUSH"