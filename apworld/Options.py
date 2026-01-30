from dataclasses import dataclass
from Options import Toggle, DefaultOnToggle, PerGameCommonOptions, StartInventoryPool, Visibility


class AttackChaiShuffle(Toggle):
    """
    Shuffles Chai's attacks from the store into the multiworld.
    """
    display_name = "Shuffle Chai Attacks"


class AttackPeppermintShuffle(Toggle):
    """
    Shuffles Peppermint's attacks from the store into the multiworld.
    """
    display_name = "Shuffle Peppermint Attacks"


class AttackMacaronShuffle(Toggle):
    """
    Shuffles Macaron's attacks from the store into the multiworld.
    """
    display_name = "Shuffle Macaron Attacks"


class AttackKorsicaShuffle(Toggle):
    """
    Shuffles Korsica's attacks from the store into the multiworld.
    """
    display_name = "Shuffle Korsica Attacks"


class SpecialAttackShuffle(Toggle):
    """
    Shuffles Chai's special attacks from the store into the multiworld.
    """
    display_name = "Shuffle Special Attacks"


class StoreItemShuffle(Toggle):
    """
    Shuffles the items from the store into the multiworld.
    """
    display_name = "Shuffle Store Items"


class ChipShuffle(Toggle):
    """
    Shuffles the chips from the store into the multiworld.
    """
    display_name = "Shuffle Chips"


class AllowSell(DefaultOnToggle):
    """
    Choose if attacks and special attacks should be able to be sold after getting a location check from them.

    If disabled, after purchasing something in the store that can be sold, its value will be set to 0.

    Items and chips can't be sold.
    """
    display_name = "Allow Selling in Store"
    visibility = Visibility.none


@dataclass
class HbkOptions(PerGameCommonOptions):
    shuffle_chai_attacks: AttackChaiShuffle
    shuffle_peppermint_attacks: AttackPeppermintShuffle
    shuffle_macaron_attacks: AttackMacaronShuffle
    shuffle_korsica_attacks: AttackKorsicaShuffle
    shuffle_special_attacks: SpecialAttackShuffle
    shuffle_store_items: StoreItemShuffle
    shuffle_chips: ChipShuffle
    allow_selling_in_store: AllowSell

    start_inventory_from_pool: StartInventoryPool