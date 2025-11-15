from dataclasses import dataclass
from Options import Toggle, PerGameCommonOptions


class VLogRewards(Toggle):
    """
    Adds items for finding the VLogs around Vandelay campus.
    """
    display_name = "VLog Rewards"


class GraffitiRewards(Toggle):
    """
    Adds items for finding the graffiti around Vandelay campus.
    """
    display_name = "Graffiti Rewards"


@dataclass
class HbkOptions(PerGameCommonOptions):
    vlog_rewards: VLogRewards
    graffiti_rewards: GraffitiRewards