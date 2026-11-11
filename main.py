import tomllib
from pathlib import Path

# Define latest Wally package version
def define_env(env):
    data = tomllib.loads(Path("wally.toml").read_text())
    env.variables["wally_version"] = data["package"]["version"]
