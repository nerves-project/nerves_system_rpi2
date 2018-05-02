# Raspberry Pi 2 Model B

[![CircleCI](https://circleci.com/gh/nerves-project/nerves_system_rpi2.svg?style=svg)](https://circleci.com/gh/nerves-project/nerves_system_rpi2)

This is the base Nerves System configuration for the Raspberry Pi 2 Model B.

![Fritzing Raspberry Pi 2 image](assets/images/raspberry-pi-2-model-b.png)
<br><sup>[Image credit](#fritzing)</sup>

| Feature              | Description                     |
| -------------------- | ------------------------------- |
| CPU                  | 900 MHz quad-core ARM Cortex-A7 |
| Memory               | 1 GB DRAM                       |
| Storage              | MicroSD                         |
| Linux kernel         | 4.4 w/ Raspberry Pi patches     |
| IEx terminal         | HDMI and USB keyboard (can be changed to UART)   |
| GPIO, I2C, SPI       | Yes - Elixir ALE                |
| ADC                  | No                              |
| PWM                  | Yes, but no Elixir support      |
| UART                 | 1 available - `ttyAMA0`         |
| Camera               | Yes - via rpi-userland          |
| Ethernet             | Yes                             |
| WiFi                 | Requires USB WiFi dongle        |
| Bluetooth            | Not supported                   |

## Using

The most common way of using this Nerves System is create a project with `mix
nerves.new` and to export `MIX_TARGET=rpi2`. See the [Getting started
guide](https://hexdocs.pm/nerves/getting-started.html#creating-a-new-nerves-app)
for more information.

If you need custom modifications to this system for your device, clone this
repository and update as described in [Making custom
systems](https://hexdocs.pm/nerves/systems.html#customizing-your-own-nerves-system)

If you're new to Nerves, check out the
[nerves_init_gadget](https://github.com/nerves-project/nerves_init_gadget)
project for creating a starter project. It will get you started with the basics
like bringing up networking, initializing the writable application data
partition, and enabling ssh-based firmware updates.  It's easiest to begin by
using the wired Ethernet interface 'eth0' and DHCP.

## Supported USB WiFi devices

The base image includes drivers and firmware for Ralink RT53xx
(`rt2800usb` driver), RealTek RTL8712U (`r8712u` driver) and
RealTek RTL 8192 (`rtl8192cu` driver) devices (e.g. Edimax USB WiFi dongles).

We are still working out which subset of all possible WiFi dongles to
support in our images. At some point, we may have the option to support
all dongles and selectively install modules at packaging time, but until
then, these drivers and their associated firmware blobs add significantly
to Nerves release images.

If you are unsure what driver your WiFi dongle requires, run Raspbian and configure WiFi
for your device. At a shell prompt, run `lsmod` to see which drivers are loaded.
Running `dmesg` may also give a clue. When using `dmesg`, reinsert the USB
dongle to generate new log messages if you don't see them.

## Linux kernel and RPi firmware/userland

There's a subtle coupling between the `nerves_system_br` version and the Linux
kernel version used here. `nerves_system_br` provides the versions of
`rpi-userland` and `rpi-firmware` that get installed. I prefer to match them to
the Linux kernel to avoid any issues. Unfortunately, none of these are tagged
by the Raspberry Pi Foundation so I either attempt to match what's in Raspbian
or take versions of the repositories that have similar commit times.

[Image credit](#fritzing): This image is from the [Fritzing](http://fritzing.org/home/) parts library.
