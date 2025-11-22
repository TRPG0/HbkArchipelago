from dataclasses import dataclass
from Options import Toggle, PerGameCommonOptions, Visibility


class VLogRewards(Toggle):
    """
    Adds items for finding the VLogs around Vandelay campus.
    """
    display_name = "VLog Rewards"
    visibility = Visibility.none


class GraffitiRewards(Toggle):
    """
    Adds items for finding the graffiti around Vandelay campus.
    """
    display_name = "Graffiti Rewards"
    visibility = Visibility.none


@dataclass
class HbkOptions(PerGameCommonOptions):
    vlog_rewards: VLogRewards
    graffiti_rewards: GraffitiRewards