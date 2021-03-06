=======================================
[鬼火]オープンソース詰め合わせ(MinGW用)
=======================================
| Irrlichtが独語で鬼火らしいので直訳。
| IrrlichtとBulletを中心に3D用途で使うライブラリをMinGWでビルドしやすいようにpremake4を使って編成しました。
| IrrlichtとBulletのswigを使ったpythonラッパも作成中。

* Irrlicht-1.72(& IrrlichtML)
* Irrlichtのswigによるpythonラッパ
* bullet-2.79
* bulletのswigによるpythonラッパ
* freetype
* glew
* freeglut
など

| Windows+mingwで楽にビルドできるようにpremake4.luaで構成しています。
| ライセンスついては、各ライブラリに準拠してください。

.. contents:: Table of Contents

URL
===
* https://github.com/ousttrue/onibi

ディレクトリ構成
================
freetype
--------

freetype-2.4.6。The FreeType License。

bullet
------

bullet-2.79のsrcディレクトリ。zlibライセンス。

* swigでラップする都合で少し改造してある(クラス内で定義されたものを外に出すなど)。

bullet/swigbullet
-----------------

bulletのswigによるラッパ。

bulletdemos
-----------

bullet-2.79のDEMOS。
    
irrlicht
--------

Irrlicht-1.72のincludeとsrcディレクトリzlibライセンス。

* swigでラップする都合で少し改造してある(クラス内で定義されたものを外に出すなど)。
* IrrlichtMLとマージ済み

irrlicht/siwgirr
----------------

Irrlichtのswigによるラッパ。

bzip2
-----

Irrlicht-1.72のsrc/Irrlicht/bzip2ディレクトリ。

jpeglib
-------

Irrlicht-1.72のsrc/Irrlicht/jpeglibディレクトリ。

libpng
------

Irrlicht-1.72のsrc/Irrlicht/libpngディレクトリ。

lzma
----

Irrlicht-1.72のsrc/Irrlicht/lzmaディレクトリ。

zlib
----

Irrlicht-1.72のsrc/Irrlicht/zlibディレクトリ。

glew
----

glew-1.7.0。BSDライセンス。

freeglut
--------

Freeglut 2.6.0。X-Consortiumライセンス。bulletdemosが使う。

premake4.exe
------------

* http://industriousone.com/premake

各ディレクトリのpremake4.luaはpremake4向けのプロジェクト定義です。

ビルド環境
==========
1) mingw-get-inst-20111118.exeでC:/MinGWにMinGWとmsysをインストールする。
2) C:/MinGW/msys/1.0/msys.batでshellに入る
3) 環境変数::

   export LANG=C
   export PATH=/mingw/bin:$PATH

ビルド方法
==========

依存ライブラリのスタティックライブラリをビルド
----------------------------------------------
::

    > cd onibi
    > ./premake4 gmake
    > make
    ==== Building freetype (release) ====
    ==== Building glew32 (release) ====
    ==== Building glut32 (release) ====
    ==== Building z (release) ====
    ==== Building lzma (release) ====
    ==== Building jpeg (release) ====
    ==== Building png (release) ====
    ==== Building bzip2 (release) ====

Irrlichtのdllをビルド
---------------------
::

    > cd onibi/irrlicht
    > ../premake4 gmake
    > make
    ==== Building IrrlichtIO (release) ====
    ==== Building aesGladman (release) ====
    ==== Building IrrlichtVideo (release) ====
    ==== Building IrrlichtScene (release) ====
    ==== Building IrrlichtGui (release) ====
    ==== Building Irrlicht (release) ====

Irrlicht examplesのビルド
-------------------------
::

    > cd onibi/irrlicht/examples
    > ../../premake4 gmake
    > make
    ==== Building 01.HelloWorld (release) ====
    ==== Building 02.Quake3Map (release) ====
    ==== Building 03.CustomSceneNode (release) ====
    ==== Building 04.Movement (release) ====
    ==== Building 05.UserInterface (release) ====
    ==== Building 06.2DGraphics (release) ====
    ==== Building 07.Collision (release) ====
    ==== Building 08.SpecialFX (release) ====
    ==== Building 09.MeshViewer (release) ====
    ==== Building 10.Shaders (release) ====
    ==== Building 11.PerPixelLighting (release) ====
    ==== Building 12.TerrainRendering (release) ====
    ==== Building 13.RenderToTexture (release) ====
    ==== Building 14.Win32Window (release) ====
    ==== Building 15.LoadIrrFile (release) ====
    ==== Building 16.Quake3MapShader (release) ====
    ==== Building 18.SplitScreen (release) ====
    ==== Building 19.MouseAndJoystick (release) ====
    ==== Building 20.ManagedLights (release) ====
    ==== Building 22.MaterialViewer (release) ====
    ==== Building 23.SMeshHandling (release) ====
    ==== Building IrrlichtML (release) ====

| メディア置き場が"../../media"になっているので、実行時に
| ../../mediaにIrrlicht/mediaをコピーする必要があります。

bulletのビルド
--------------
::

    > cd onibi/bullet
    > ../premake4 gmake
    > make
    ==== Building LinearMath (release32) ====
    ==== Building BulletCollision (release32) ====
    ==== Building BulletDynamics (release32) ====
    ==== Building BulletSoftBody (release32) ====

bulletdemosのビルド
-------------------
::

    > cd onibi/bulletdemos
    > ../premake4 gmake
    > make
    ==== Building OpenGLSupport (release32) ====
    ==== Building App_BasicDemo (release32) ====
    ==== Building App_Box2dDemo (release32) ====
    ==== Building App_BspDemo (release32) ====
    ==== Building App_CcdPhysicsDemo (release32) ====
    ==== Building App_CollisionDemo (release32) ====
    ==== Building App_CollisionInterfaceDemo (release32) ====
    ==== Building App_ConcaveConvexcastDemo (release32) ====
    ==== Building App_ConcaveDemo (release32) ====
    ==== Building App_ConcaveRaycastDemo (release32) ====
    ==== Building App_ConstraintDemo (release32) ====
    ==== Building App_ContinuousConvexCollision (release32) ====
    ==== Building App_ConvexHullDistance (release32) ====
    ==== Building App_DynamicControlDemo (release32) ====
    ==== Building App_EPAPenDepthDemo (release32) ====
    ==== Building App_ForkLiftDemo (release32) ====
    ==== Building App_FractureDemo (release32) ====
    ==== Building App_GenericJointDemo (release32) ====
    ==== Building App_GimpactTestDemo (release32) ====
    ==== Building App_GjkConvexCastDemo (release32) ====
    ==== Building App_HelloWorld (release32) ====
    ==== Building App_InternalEdgeDemo (release32) ====
    ==== Building App_MovingConcaveDemo (release32) ====
    ==== Building App_MultiMaterialDemo (release32) ====
    ==== Building App_RagdollDemo (release32) ====
    ==== Building App_Raytracer (release32) ====
    ==== Building App_SimplexDemo (release32) ====
    ==== Building App_SliderConstraintDemo (release32) ====
    ==== Building App_TerrainDemo (release32) ====
    ==== Building App_UserCollisionAlgorithm (release32) ====
    ==== Building App_VehicleDemo (release32) ====

pythonモジュールのビルド環境
============================
1) python-2.7.2.msiでインストール
2) swigwin-2.0.4.zipを解答してパスを通す

bulletのpythonモジュールをビルド
--------------------------------

| 動作確認中・・・
| 要python、swig.exe

::

    > cd onibi/bullet/swigbullet/python
    > /c/Python27/python setup.py install

irrlichtのpythonモジュールをビルド
----------------------------------

| 動作確認中・・・
| 要python、swig.exe

::

    > cd onibi/irrlicht/swigirr/python
    > /c/Python27/python setup.py install

| 実行時にIrrlicht.dllがpathの通った場所(C:\Python27\Lib\site-packages\irr-0.1-py2.7-win32.egg\irrなど)に必要。

更新
====
2012-01-22
----------
* githubに引越し

2011-11-21
----------
* Irrlichtにbulletが入ってしまったり構成がよろしくないのでirrmmdを取り除いた

