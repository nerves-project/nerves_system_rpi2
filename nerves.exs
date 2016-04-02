use Mix.Config

config :nerves_system_rpi2, :nerves_env,
  type:  :system,
  build_platform: :nerves_system_br,
  bakeware: [target: "rpi2", recipe: "nerves/rpi2"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
