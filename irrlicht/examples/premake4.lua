-- A solution contains projects, and defines the available configurations
solution "examples"
configurations { "Release", "Debug" }

defines {
    "UNICODE",
    "_UNICODE",
}

configuration "gmake Debug"
do
    buildoptions { "-g" }
    linkoptions { "-g" }
end

configuration "windows"
do
    defines {
        "WIN32",
        "_WINDOWS",
        "IRRLICHT_EXPORTS",
    }
end

configuration {}

-- Official examples
--include "Demo"
include "01.HelloWorld"
include "02.Quake3Map"
include "03.CustomSceneNode"
include "04.Movement"
include "05.UserInterface"
include "06.2DGraphics"
include "07.Collision"
include "08.SpecialFX"
include "09.Meshviewer"
include "10.Shaders"
include "11.PerPixelLighting"
include "12.TerrainRendering"
include "13.RenderToTexture"
include "14.Win32Window"
include "15.LoadIrrFile"
include "16.Quake3MapShader"
include "18.SplitScreen"
include "19.MouseAndJoystick"
include "20.ManagedLights"
--include "21.Quake3Explorer"
include "22.MaterialViewer"
include "23.SMeshHandling"

-- DeformableMesh example
include "DeformableMesh"

-- IrrlichtML example
include "IrrlichtML"

--[[
-- onibi examples
include "A.CustomSceneNode"
include "B.TPS"
include "C.Dungion"
include "D.PmdAndVmd"
include "E.celshading"
include "F.glsl"
include "CloudSceneNode"
include "skydome"
include "rain"
include "ShTlTerrain"
include "ProceduralTrees"
include "grass"
include "TlTdemoSource061228"
--]]

