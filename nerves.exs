use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

app = :nerves_system_rpi2

config app, :nerves_env,
  type:  :system,
  version: version,
  artifact_url: [
    "https://github.com/nerves-project/#{app}/releases/download/v#{version}/#{app}-v#{version}.tar.gz"
  ],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ],
  checksum: [
    "nerves_defconfig",
    "rootfs-additions",
    "linux-4.4.defconfig",
    "fwup.conf",
    "cmdline.txt",
    "config.txt",
    "post-createfs.sh"
  ]
