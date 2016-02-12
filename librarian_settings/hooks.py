from .dashboard_plugin import SettingsDashboardPlugin
from .settings import SettingsManager


def initialize(supervisor):
    supervisor.exts.settings = SettingsManager()
    supervisor.exts.dashboard.register(SettingsDashboardPlugin)

