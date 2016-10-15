defmodule NervesSystemRpi2.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_rpi2,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_package],
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    [{:nerves, github: "nerves-project/nerves"},
     #{:nerves, path: "../nerves", override: true},
     {:nerves_system_br, github: "nerves-project/nerves_system_br"},
     #{:nerves_toolchain_arm_unknown_linux_gnueabihf, "~> 0.7.0"}]
     {:nerves_toolchain_arm_unknown_linux_gnueabihf,
       github: "nerves-project/toolchains",
       branch: "pkg",
       sparse: "nerves_toolchain_arm_unknown_linux_gnueabihf"}]
  end

  defp description do
    """
    Nerves System - Raspberry Pi 2 B
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
    files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions", "fwup.conf", "cmdline.txt", "linux-4.4.defconfig", "config.txt", "post-createfs.sh"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_rpi2"}]
  end
end
