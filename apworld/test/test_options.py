from . import HbkTestBase
from ..Items import item_list, HbkItemType
from ..Locations import location_list, HbkLocationType


class TestNotAttackChai(HbkTestBase):
    options = { "shuffle_chai_attacks": False }

    def test_chai_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        chai_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackChai and i.count != 0]
        chai_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackChai]

        for item in chai_attack_items:
            self.assertNotIn(item, item_names)

        for location in chai_attack_locations:
            self.assertNotIn(location, location_names)


class TestAttackChai(HbkTestBase):
    options = { "shuffle_chai_attacks": True }

    def test_chai_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        chai_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackChai and i.count != 0]
        chai_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackChai]

        for item in chai_attack_items:
            self.assertIn(item, item_names)

        for location in chai_attack_locations:
            self.assertIn(location, location_names)


class TestNotAttackPeppermint(HbkTestBase):
    options = { "shuffle_peppermint_attacks": False }

    def test_peppermint_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        peppermint_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackPeppermint]
        peppermint_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackPeppermint]

        for item in peppermint_attack_items:
            self.assertNotIn(item, item_names)

        for location in peppermint_attack_locations:
            self.assertNotIn(location, location_names)


class TestAttackPeppermint(HbkTestBase):
    options = { "shuffle_peppermint_attacks": True }

    def test_peppermint_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        peppermint_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackPeppermint]
        peppermint_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackPeppermint]

        for item in peppermint_attack_items:
            self.assertIn(item, item_names)

        for location in peppermint_attack_locations:
            self.assertIn(location, location_names)


class TestNotAttackMacaron(HbkTestBase):
    options = { "shuffle_macaron_attacks": False }

    def test_macaron_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        macaron_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackMacaron]
        macaron_attack_locations = [l.name for l in location_list if l.loc_type == HbkItemType.AttackMacaron]

        for item in macaron_attack_items:
            self.assertNotIn(item, item_names)

        for location in macaron_attack_locations:
            self.assertNotIn(location, location_names)


class TestAttackMacaron(HbkTestBase):
    options = { "shuffle_macaron_attacks": True }

    def test_macaron_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        macaron_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackMacaron]
        macaron_attack_locations = [l.name for l in location_list if l.loc_type == HbkItemType.AttackMacaron]

        for item in macaron_attack_items:
            self.assertIn(item, item_names)

        for location in macaron_attack_locations:
            self.assertIn(location, location_names)


class TestNotAttackKorsica(HbkTestBase):
    options = { "shuffle_korsica_attacks": False }

    def test_korsica_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        korsica_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackKorsica]
        korsica_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackKorsica]

        for item in korsica_attack_items:
            self.assertNotIn(item, item_names)

        for location in korsica_attack_locations:
            self.assertNotIn(location, location_names)


class TestAttackKorsica(HbkTestBase):
    options = { "shuffle_korsica_attacks": True }

    def test_korsica_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        korsica_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.AttackKorsica]
        korsica_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.AttackKorsica]

        for item in korsica_attack_items:
            self.assertIn(item, item_names)

        for location in korsica_attack_locations:
            self.assertIn(location, location_names)


class TestNotSpecialAttack(HbkTestBase):
    options = { "shuffle_special_attacks": False }

    def test_special_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        special_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.SpecialAttack and i.count != 0]
        special_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.SpecialAttack]

        for item in special_attack_items:
            self.assertNotIn(item, item_names)

        for location in special_attack_locations:
            self.assertNotIn(location, location_names)


class TestSpecialAttack(HbkTestBase):
    options = { "shuffle_special_attacks": True }

    def test_special_attacks(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        special_attack_items = [i.name for i in item_list if i.item_type == HbkItemType.SpecialAttack and i.count != 0]
        special_attack_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.SpecialAttack]

        for item in special_attack_items:
            self.assertIn(item, item_names)

        for location in special_attack_locations:
            self.assertIn(location, location_names)


class TestNotStoreItem(HbkTestBase):
    options = { "shuffle_store_items": False }

    def test_store_items(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        store_items = [i.name for i in item_list if i.item_type == HbkItemType.StoreItem]
        store_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.StoreItem]

        for item in store_items:
            self.assertNotIn(item, item_names)

        for location in store_locations:
            self.assertNotIn(location, location_names)


class TestStoreItem(HbkTestBase):
    options = { "shuffle_store_items": True }

    def test_store_items(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        store_items = [i.name for i in item_list if i.item_type == HbkItemType.StoreItem]
        store_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.StoreItem]

        for item in store_items:
            self.assertIn(item, item_names)

        for location in store_locations:
            self.assertIn(location, location_names)


class TestNotChips(HbkTestBase):
    options = { "shuffle_chips": False }

    def test_chips(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        chip_items = [i.name for i in item_list if i.item_type == HbkItemType.Chip and i.count != 0]
        chip_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.Chip]

        for item in chip_items:
            self.assertNotIn(item, item_names)

        for location in chip_locations:
            self.assertNotIn(location, location_names)


class TestChips(HbkTestBase):
    options = { "shuffle_chips": True }

    def test_chips(self) -> None:
        item_names = [i.name for i in self.multiworld.get_items()]
        location_names = [l.name for l in self.multiworld.get_locations()]

        chip_items = [i.name for i in item_list if i.item_type == HbkItemType.Chip and i.count != 0]
        chip_locations = [l.name for l in location_list if l.loc_type == HbkLocationType.Chip]

        for item in chip_items:
            self.assertIn(item, item_names)

        for location in chip_locations:
            self.assertIn(location, location_names)