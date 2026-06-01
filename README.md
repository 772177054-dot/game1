# 烽火营垒 Godot 4 项目初始化

这是根据仓库中的 `game.md` 需求文档创建的 Godot 4 游戏项目骨架。

> 当前阶段只做“项目初始化”，不是完整游戏。

## 如何打开项目

1. 安装 Godot 4.x。
2. 打开 Godot Project Manager。
3. 点击 **Import / 导入**。
4. 选择本仓库根目录中的 `project.godot`。
5. 导入后打开项目。

## 如何运行

1. 在 Godot 编辑器中打开项目。
2. 确认主场景为 `res://scenes/Main.tscn`。
3. 点击右上角的运行按钮，或按 `F5`。
4. 进入主菜单后，点击 **开始游戏** 可以进入测试地图。

## 当前实现了什么

- 创建了 Godot 4 标准项目文件 `project.godot`。
- 创建了清晰目录：
  - `scenes/`
  - `scripts/`
  - `assets/`
  - `assets/characters/`
  - `assets/buildings/`
  - `assets/terrain/`
  - `assets/ui/`
  - `assets/audio/`
  - `docs/`
- 创建了主场景 `scenes/Main.tscn`。
- 创建了基础菜单场景 `scenes/MainMenu.tscn`，包含：
  - 开始游戏
  - 设置
  - 退出游戏
- 创建了测试地图场景 `scenes/BattleMap.tscn`，包含：
  - 草地、道路、树林、粮草资源的占位布局
  - 玩家主营和敌方主营的占位布局
  - 玩家与敌方单位占位
  - 顶部资源 HUD 占位
  - 返回主菜单按钮
- 创建了基础 GDScript 脚本：
  - `scripts/Main.gd`
  - `scripts/MainMenu.gd`
  - `scripts/BattleMap.gd`
- 创建了带 `placeholder` 标记的临时美术和音频占位文件，后续应替换为正式资源。
- 创建了 `docs/game_design_summary.md`，用于记录初始化阶段采用的设计摘要。

## 下一步要做什么

建议下一次只做一个小目标，不要一次做完整游戏。推荐顺序：

1. 做基础镜头移动和缩放。
2. 做单位点击选择和框选。
3. 做单位右键移动。
4. 做资源点与采集逻辑。
5. 做主营 / 兵营的基础 UI 操作。
6. 做训练步兵、弓兵、骑兵。
7. 做最简单的攻击与血量系统。
8. 做胜利和失败界面。
9. 逐步替换 placeholder 占位资源为正式国风美术、UI、音效。

## 重要说明

- 本项目目前是 Godot 4 初始化骨架。
- 所有 `placeholder` 资源都只是临时占位，方便先跑通项目结构和场景切换。
- 当前没有实现完整 RTS 玩法逻辑。
