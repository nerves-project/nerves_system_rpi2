use Mix.Config

config :nerves_system_rpi2, :nerves_env,
  type:  :system,
  bakeware: [target: "rpi2", recipe: "nerves/rpi2"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
