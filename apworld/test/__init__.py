from test.bases import WorldTestBase
from .. import HiFiRushWorld


class HbkTestBase(WorldTestBase):
    game = "Hi-Fi RUSH"
    world: HiFiRushWorld