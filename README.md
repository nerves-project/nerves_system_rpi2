# NervesSystemRpi2

[![Build Status](https://travis-ci.org/nerves-project/nerves_system_rpi2.png?branch=master)](https://travis-ci.org/nerves-project/nerves_system_rpi2)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add nerves_system_rpi2 to your list of dependencies in `mix.exs`:

        def deps do
          [{:nerves_system_rpi2, "~> 0.4.0"}]
        end

  2. Ensure nerves_system_rpi2 is started before your application:

        def application do
          [applications: [:nerves_system_rpi2]]
        end
