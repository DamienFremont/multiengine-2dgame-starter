# 2D Game Starter - Multi Engine (Android, Angular, React, Unity, Godot, SDL, Raylib)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Twitter Follow](https://img.shields.io/twitter/follow/Damien_Fremont?style=social)](https://twitter.com/Damien_Fremont)
[!["Buy Me A Coffee"](./docs/readme/buymeacoffee-20.png)](https://www.buymeacoffee.com/damienfremont)

:warning: **WORK IN PROGRESS !!!**


![alt text](./docs/readme/header.jpg)

I made the same game in 8 engines !

Spoiler: Don't do it !!! Unless you intend to build your own custom engine in the futur, or be able to maintain your code in 20+ years.

Pros & Cons:
- less dependency to engine
- too much complexity

## Content

  - [Dependencies](#dependencies)
  - [Screenshots](#screenshots)
  - [Features](#features)
  - [Install](#install)
  - [Usage](#usage)
  - [Assets](#assets)
  - [Resources](#resources)

---------------------------------------

## Dependencies

- C++ 2020 / C 2017

## Screenshots

![alt text](./docs/readme/diagrams-1.png)

## Features

- [x] ⚙️ Engine: Godot (4.7)
- [ ] ⚙️ Engine: Unity (6.0.1)
- [ ] ⚙️ Engine: Android
- [ ] ⚙️ Engine: Raylib (5.0)
- [ ] 💻 UI: Main Menu
- [ ] 💻 UI: Settings Menu
- [ ] 🔉 Audio: Sound effects
- [ ] 🔉 Audio: Music
- [ ] 🖼️ 2D

Repository layout:
```
├── assets
├── docs
├── infra
├── lib
├── platform
│   ├── assets
│   └── core
├── standalone
│   ├── android
│   ├── unity
│   └── ...
└── tools
    └── ci
```

## Specs

| Mockups | Mockups |
|---------|---------|
| ![alt text](./docs/mockups/mockups-1-icon.jpg) | ![alt text](./docs/mockups/mockups-2-introscreen.jpg) |
| ![alt text](./docs/mockups/mockups-3-titlescreen.jpg) | ![alt text](./docs/mockups/mockups-4-levelscreen.jpg) |

## Install

```bash
.\tools\ci\clean.bat
```

## Usage

```bash
.\tools\ci\dev.bat
```

## Release

```bash
.\tools\ci\release.bat
```
