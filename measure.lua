local ignoredFunctions = {
    "math",
    "getRadioChannel",
    "getRadioChannelName",
    "getSFXStatus",
    "getSoundBPM",
    "getSoundBufferLength",
    "getSoundEffectParameters",
    "getSoundEffects",
    "getSoundFFTData",
    "getSoundLength",
    "getSoundLevelData",
    "getSoundMaxDistance",
    "getSoundMetaTags",
    "getSoundMinDistance",
    "getSoundPan",
    "getSoundPosition",
    "getSoundProperties",
    "getSoundSpeed",
    "getSoundVolume",
    "getSoundWaveData",
    "isSoundLooped",
    "isSoundPanningEnabled",
    "isSoundPaused",
    "playSFX3D",
    "playSFX",
    "playSound3D",
    "playSound",
    "playSoundFrontEnd",
    "setRadioChannel",
    "setSoundEffectEnabled",
    "setSoundEffectParameter",
    "setSoundLooped",
    "setSoundMaxDistance",
    "setSoundMinDistance",
    "setSoundPan",
    "setSoundPanningEnabled",
    "setSoundPaused",
    "setSoundPosition",
    "setSoundProperties",
    "setSoundSpeed",
    "setSoundVolume",
    "stopSound",
    "createBlip",
    "createBlipAttachedTo",
    "getBlipColor",
    "getBlipIcon",
    "getBlipOrdering",
    "getBlipSize",
    "getBlipVisibleDistance",
    "setBlipColor",
    "setBlipIcon",
    "setBlipOrdering",
    "setBlipSize",
    "setBlipVisibleDistance",
    "canBrowserNavigateBack",
    "canBrowserNavigateForward",
    "createBrowser",
    "executeBrowserJavascript",
    "focusBrowser",
    "getBrowserProperty",
    "getBrowserSettings",
    "getBrowserSource",
    "getBrowserTitle",
    "getBrowserURL",
    "injectBrowserMouseDown",
    "injectBrowserMouseMove",
    "injectBrowserMouseUp",
    "injectBrowserMouseWheel",
    "isBrowserDomainBlocked",
    "isBrowserFocused",
    "isBrowserLoading",
    "isBrowserRenderingPaused",
    "loadBrowserURL",
    "navigateBrowserBack",
    "navigateBrowserForward",
    "reloadBrowserPage",
    "requestBrowserDomains",
    "resizeBrowser",
    "setBrowserAjaxHandler",
    "setBrowserProperty",
    "setBrowserRenderingPaused",
    "setBrowserVolume",
    "toggleBrowserDevTools",
    "guiCreateBrowser",
    "guiGetBrowser",
    "fadeCamera",
    "getCamera",
    "getCameraClip",
    "getCameraFieldOfView",
    "getCameraGoggleEffect",
    "getCameraInterior",
    "getCameraMatrix",
    "getCameraDrunkLevel",
    "getCameraTarget",
    "getCameraViewMode",
    "setCameraClip",
    "setCameraFieldOfView",
    "setCameraGoggleEffect",
    "setCameraInterior",
    "setCameraMatrix",
    "setCameraDrunkLevel",
    "setCameraTarget",
    "setCameraViewMode",
    "addPedClothes",
    "getBodyPartName",
    "getClothesByTypeIndex",
    "getClothesTypeName",
    "getPedClothes",
    "getTypeIndexFromClothes",
    "removePedClothes",
    "addColPolygonPoint",
    "createColCircle",
    "createColCuboid",
    "createColPolygon",
    "createColRectangle",
    "createColSphere",
    "createColTube",
    "getColPolygonHeight",
    "getColPolygonPoints",
    "getColPolygonPointPosition",
    "getColShapeType",
    "getColShapeRadius",
    "getColShapeSize",
    "getElementColShape",
    "getElementsWithinColShape",
    "isElementWithinColShape",
    "isInsideColShape",
    "removeColPolygonPoint",
    "setColPolygonHeight",
    "setColPolygonPointPosition",
    "setColShapeRadius",
    "setColShapeSize",
    "getCursorAlpha",
    "getCursorPosition",
    "isCursorShowing",
    "setCursorAlpha",
    "setCursorPosition",
    "showCursor",
    "dxConvertPixels",
    "dxCreateFont",
    "dxCreateRenderTarget",
    "dxCreateScreenSource",
    "dxCreateShader",
    "dxCreateTexture",
    "dxDrawCircle",
    "dxDrawImage",
    "dxDrawImageSection",
    "dxDrawLine",
    "dxDrawLine3D",
    "dxDrawMaterialLine3D",
    "dxDrawMaterialPrimitive",
    "dxDrawMaterialPrimitive3D",
    "dxDrawMaterialSectionLine3D",
    "dxDrawPrimitive",
    "dxDrawPrimitive3D",
    "dxDrawRectangle",
    "dxDrawText",
    "dxDrawWiredSphere",
    "dxGetBlendMode",
    "dxGetFontHeight",
    "dxGetMaterialSize",
    "dxGetPixelColor",
    "dxGetPixelsSize",
    "dxGetPixelsFormat",
    "dxGetStatus",
    "dxGetTextSize",
    "dxGetTextWidth",
    "dxGetTexturePixels",
    "dxIsAspectRatioAdjustmentEnabled",
    "dxSetAspectRatioAdjustmentEnabled",
    "dxSetBlendMode",
    "dxSetPixelColor",
    "dxSetRenderTarget",
    "dxSetShaderValue",
    "dxSetShaderTessellation",
    "dxSetShaderTransform",
    "dxSetTestMode",
    "dxSetTextureEdge",
    "dxSetTexturePixels",
    "dxUpdateScreenSource",
    "createEffect",
    "fxAddBlood",
    "fxAddBulletImpact",
    "fxAddBulletSplash",
    "fxAddDebris",
    "fxAddFootSplash",
    "fxAddGlass",
    "fxAddGunshot",
    "fxAddPunchImpact",
    "fxAddSparks",
    "fxAddTankFire",
    "fxAddTyreBurst",
    "fxAddWaterHydrant",
    "fxAddWaterSplash",
    "fxAddWood",
    "getEffectDensity",
    "getEffectSpeed",
    "setEffectDensity",
    "setEffectSpeed",
    "attachElements",
    "createElement",
    "destroyElement",
    "detachElements",
    "getAllElementData",
    "getAttachedElements",
    "getElementAlpha",
    "getElementAngularVelocity",
    "getElementAttachedOffsets",
    "getElementAttachedTo",
    "getElementBoneMatrix",
    "getElementBonePosition",
    "getElementBoneRotation",
    "getElementBoundingBox",
    "getElementByID",
    "getElementChild",
    "getElementChildren",
    "getElementChildrenCount",
    "getElementCollisionsEnabled",
    "getElementData",
    "getElementDimension",
    "getElementDistanceFromCentreOfMassToBaseOfModel",
    "getElementHealth",
    "getElementID",
    "getElementInterior",
    "getElementLighting",
    "getElementMatrix",
    "getElementModel",
    "getElementParent",
    "getElementPosition",
    "getElementRadius",
    "getElementRotation",
    "getElementsByType",
    "getElementsWithinRange",
    "getElementType",
    "getElementVelocity",
    "getLowLODElement",
    "getRootElement",
    "isElement",
    "isElementAttached",
    "isElementCallPropagationEnabled",
    "isElementCollidableWith",
    "isElementDoubleSided",
    "isElementFrozen",
    "isElementInWater",
    "isElementLocal",
    "isElementLowLOD",
    "isElementOnScreen",
    "isElementStreamable",
    "isElementStreamedIn",
    "isElementSyncer",
    "isElementWaitingForGroundToLoad",
    "setElementAlpha",
    "setElementAngularVelocity",
    "setElementAttachedOffsets",
    "setElementBoneMatrix",
    "setElementBonePosition",
    "setElementBoneRotation",
    "setElementCallPropagationEnabled",
    "setElementCollidableWith",
    "setElementCollisionsEnabled",
    "setElementData",
    "setElementDimension",
    "setElementDoubleSided",
    "setElementFrozen",
    "setElementHealth",
    "setElementID",
    "setElementInterior",
    "setElementMatrix",
    "setElementModel",
    "setElementParent",
    "setElementPosition",
    "setElementRotation",
    "setElementStreamable",
    "setElementVelocity",
    "setLowLODElement",
    "updateElementRpHAnim",
    "engineAddImage",
    "engineApplyShaderToWorldTexture",
    "engineFreeModel",
    "engineGetModelIDFromName",
    "engineGetModelLODDistance",
    "engineGetModelNameFromID",
    "engineGetModelPhysicalPropertiesGroup",
    "engineGetModelTextureNames",
    "engineGetModelTextures",
    "engineGetModelTXDID",
    "engineGetModelVisibleTime",
    "engineGetObjectGroupPhysicalProperty",
    "engineGetSurfaceProperties",
    "engineGetVisibleTextureNames",
    "engineImageGetFilesCount",
    "engineImageGetFiles",
    "engineImageGetFile",
    "engineImageLinkDFF",
    "engineImageLinkTXD",
    "engineImportTXD",
    "engineLoadCOL",
    "engineLoadDFF",
    "engineLoadIMG",
    "engineLoadIFP",
    "engineLoadTXD",
    "engineRemoveImage",
    "engineRemoveShaderFromWorldTexture",
    "engineReplaceAnimation",
    "engineReplaceCOL",
    "engineReplaceModel",
    "engineRequestModel",
    "engineResetModelLODDistance",
    "engineResetSurfaceProperties",
    "engineRestoreAnimation",
    "engineRestoreCOL",
    "engineRestoreDFFImage",
    "engineRestoreModel",
    "engineRestoreModelPhysicalPropertiesGroup",
    "engineRestoreObjectGroupPhysicalProperties",
    "engineRestoreTXDImage",
    "engineRestreamWorld",
    "engineSetAsynchronousLoading",
    "engineSetModelLODDistance",
    "engineSetModelPhysicalPropertiesGroup",
    "engineSetModelVisibleTime",
    "engineSetObjectGroupPhysicalProperty",
    "engineSetSurfaceProperties",
    "engineStreamingFreeUpMemory",
    "engineStreamingGetUsedMemory",
    "addEvent",
    "addEventHandler",
    "cancelEvent",
    "cancelLatentEvent",
    "getEventHandlers",
    "getLatentEventHandles",
    "getLatentEventStatus",
    "removeEventHandler",
    "triggerEvent",
    "triggerLatentServerEvent",
    "triggerServerEvent",
    "wasEventCancelled",
    "createExplosion",
    "fileClose",
    "fileCopy",
    "fileCreate",
    "fileDelete",
    "fileExists",
    "fileFlush",
    "fileGetPath",
    "fileGetPos",
    "fileGetSize",
    "fileIsEOF",
    "fileOpen",
    "fileRead",
    "fileRename",
    "fileSetPos",
    "fileWrite",
    "createFire",
    "extinguishFire",
    "guiBringToFront",
    "getChatboxLayout",
    "getChatboxCharacterLimit",
    "guiCreateFont",
    "guiBlur",
    "guiFocus",
    "guiGetAlpha",
    "guiGetCursorType",
    "guiGetEnabled",
    "guiGetFont",
    "guiGetInputEnabled",
    "guiGetInputMode",
    "guiGetPosition",
    "guiGetProperties",
    "guiGetProperty",
    "guiGetScreenSize",
    "guiGetSize",
    "guiGetText",
    "guiGetVisible",
    "guiMoveToBack",
    "guiSetAlpha",
    "guiSetEnabled",
    "guiSetFont",
    "guiSetInputEnabled",
    "guiSetInputMode",
    "guiSetPosition",
    "guiSetProperty",
    "guiSetSize",
    "guiSetText",
    "guiSetVisible",
    "isChatBoxInputActive",
    "isConsoleActive",
    "isDebugViewActive",
    "isMainMenuActive",
    "isMTAWindowActive",
    "isTransferBoxActive",
    "setChatboxCharacterLimit",
    "setDebugViewActive",
    "guiCreateButton",
    "guiCheckBoxGetSelected",
    "guiCheckBoxSetSelected",
    "guiCreateCheckBox",
    "guiCreateComboBox",
    "guiComboBoxAddItem",
    "guiComboBoxClear",
    "guiComboBoxGetItemCount",
    "guiComboBoxGetItemText",
    "guiComboBoxGetSelected",
    "guiComboBoxIsOpen",
    "guiComboBoxRemoveItem",
    "guiComboBoxSetItemText",
    "guiComboBoxSetOpen",
    "guiComboBoxSetSelected",
    "guiCreateEdit",
    "guiEditGetCaretIndex",
    "guiEditGetMaxLength",
    "guiEditIsMasked",
    "guiEditIsReadOnly",
    "guiEditSetCaretIndex",
    "guiEditSetMasked",
    "guiEditSetMaxLength",
    "guiEditSetReadOnly",
    "guiCreateGridList",
    "guiGridListAddColumn",
    "guiGridListAddRow",
    "guiGridListAutoSizeColumn",
    "guiGridListClear",
    "guiGridListGetColumnCount",
    "guiGridListGetColumnTitle",
    "guiGridListGetColumnWidth",
    "guiGridListGetHorizontalScrollPosition",
    "guiGridListGetItemColor",
    "guiGridListGetItemData",
    "guiGridListGetItemText",
    "guiGridListGetRowCount",
    "guiGridListGetSelectedCount",
    "guiGridListGetSelectedItem",
    "guiGridListGetSelectedItems",
    "guiGridListGetSelectionMode",
    "guiGridListIsSortingEnabled",
    "guiGridListGetVerticalScrollPosition",
    "guiGridListInsertRowAfter",
    "guiGridListRemoveColumn",
    "guiGridListRemoveRow",
    "guiGridListSetColumnTitle",
    "guiGridListSetColumnWidth",
    "guiGridListSetHorizontalScrollPosition",
    "guiGridListSetItemColor",
    "guiGridListSetItemData",
    "guiGridListSetItemText",
    "guiGridListSetScrollBars",
    "guiGridListSetSelectedItem",
    "guiGridListSetSelectionMode",
    "guiGridListSetSortingEnabled",
    "guiGridListSetVerticalScrollPosition",
    "guiCreateMemo",
    "guiMemoGetCaretIndex",
    "guiMemoGetVerticalScrollPosition",
    "guiMemoSetVerticalScrollPosition",
    "guiMemoIsReadOnly",
    "guiMemoSetCaretIndex",
    "guiMemoSetReadOnly",
    "guiCreateProgressBar",
    "guiProgressBarGetProgress",
    "guiProgressBarSetProgress",
    "guiCreateRadioButton",
    "guiRadioButtonGetSelected",
    "guiRadioButtonSetSelected",
    "guiCreateScrollBar",
    "guiScrollBarGetScrollPosition",
    "guiScrollBarSetScrollPosition",
    "guiCreateScrollPane",
    "guiScrollPaneGetHorizontalScrollPosition",
    "guiScrollPaneGetVerticalScrollPosition",
    "guiScrollPaneSetHorizontalScrollPosition",
    "guiScrollPaneSetScrollBars",
    "guiScrollPaneSetVerticalScrollPosition",
    "guiCreateStaticImage",
    "guiStaticImageGetNativeSize",
    "guiStaticImageLoadImage",
    "guiCreateTabPanel",
    "guiGetSelectedTab",
    "guiSetSelectedTab",
    "guiCreateTab",
    "guiDeleteTab",
    "guiCreateLabel",
    "guiLabelGetColor",
    "guiLabelGetFontHeight",
    "guiLabelGetTextExtent",
    "guiLabelSetColor",
    "guiLabelSetHorizontalAlign",
    "guiLabelSetVerticalAlign",
    "guiCreateWindow",
    "guiWindowIsMovable",
    "guiWindowIsSizable",
    "guiWindowSetMovable",
    "guiWindowSetSizable",
    "addCommandHandler",
    "bindKey",
    "executeCommandHandler",
    "getAnalogControlState",
    "getBoundKeys",
    "getCommandHandlers",
    "getCommandsBoundToKey",
    "getFunctionsBoundToKey",
    "getKeyBoundToCommand",
    "getKeyBoundToFunction",
    "getKeyState",
    "isCapsLockEnabled",
    "isControlEnabled",
    "removeCommandHandler",
    "setAnalogControlState",
    "toggleAllControls",
    "toggleControl",
    "unbindKey",
    "createLight",
    "getLightColor",
    "getLightDirection",
    "getLightRadius",
    "getLightType",
    "setLightColor",
    "setLightDirection",
    "setLightRadius",
    "createMarker",
    "getMarkerColor",
    "getMarkerCount",
    "getMarkerIcon",
    "getMarkerSize",
    "getMarkerTarget",
    "getMarkerType",
    "isCoronaReflectionEnabled",
    "isElementWithinMarker",
    "setCoronaReflectionEnabled",
    "setMarkerColor",
    "setMarkerIcon",
    "setMarkerSize",
    "setMarkerTarget",
    "setMarkerType",
    "matrix",
    "vector/Vector2",
    "vector/Vector3",
    "vector/Vector4",
    "breakObject",
    "createObject",
    "getObjectMass",
    "getObjectScale",
    "getObjectProperty",
    "isObjectBreakable",
    "isObjectMoving",
    "moveObject",
    "respawnObject",
    "setObjectBreakable",
    "setObjectMass",
    "setObjectScale",
    "setObjectProperty",
    "stopObject",
    "toggleObjectRespawn",
    "clearChatBox",
    "clearDebugBox",
    "isChatInputBlocked",
    "isChatVisible",
    "outputChatBox",
    "outputConsole",
    "outputDebugString",
    "showChat",
    "canPedBeKnockedOffBike",
    "createPed",
    "doesPedHaveJetPack",
    "getPedAmmoInClip",
    "getPedAnalogControlState",
    "getPedAnimation",
    "getPedArmor",
    "getPedBonePosition",
    "getPedCameraRotation",
    "getPedContactElement",
    "getPedControlState",
    "getPedFightingStyle",
    "getPedMoveState",
    "getPedOccupiedVehicle",
    "getPedOccupiedVehicleSeat",
    "getPedOxygenLevel",
    "getPedSimplestTask",
    "getPedStat",
    "getPedTarget",
    "getPedTargetCollision",
    "getPedTargetEnd",
    "getPedTargetStart",
    "getPedTask",
    "getPedTotalAmmo",
    "getPedVoice",
    "getPedWalkingStyle",
    "getPedWeapon",
    "getPedWeaponMuzzlePosition",
    "getPedWeaponSlot",
    "getValidPedModels",
    "givePedWeapon",
    "isPedBleeding",
    "isPedChoking",
    "isPedDead",
    "isPedDoingGangDriveby",
    "isPedDoingTask",
    "isPedDucked",
    "isPedFootBloodEnabled",
    "isPedHeadless",
    "isPedInVehicle",
    "isPedOnFire",
    "isPedOnGround",
    "isPedReloadingWeapon",
    "isPedTargetingMarkerEnabled",
    "isPedWearingJetpack",
    "killPed",
    "removePedFromVehicle",
    "setPedAimTarget",
    "setPedAnalogControlState",
    "setPedAnimation",
    "setPedAnimationProgress",
    "setPedAnimationSpeed",
    "setPedArmor",
    "setPedBleeding",
    "setPedCameraRotation",
    "setPedCanBeKnockedOffBike",
    "setPedControlState",
    "setPedDoingGangDriveby",
    "setPedEnterVehicle",
    "setPedExitVehicle",
    "setPedFightingStyle",
    "setPedFootBloodEnabled",
    "setPedHeadless",
    "setPedLookAt",
    "setPedOnFire",
    "setPedOxygenLevel",
    "setPedStat",
    "setPedTargetingMarkerEnabled",
    "setPedVoice",
    "setPedWalkingStyle",
    "setPedWeaponSlot",
    "warpPedIntoVehicle",
    "createPickup",
    "getPickupAmmo",
    "getPickupAmount",
    "getPickupType",
    "getPickupWeapon",
    "setPickupType",
    "forcePlayerMap",
    "getLocalPlayer",
    "getPlayerBlurLevel",
    "getPlayerFromName",
    "getPlayerMapBoundingBox",
    "getPlayerMapOpacity",
    "getPlayerMoney",
    "getPlayerName",
    "getPlayerNametagColor",
    "getPlayerNametagText",
    "getPlayerPing",
    "getPlayerTeam",
    "getPlayerWantedLevel",
    "givePlayerMoney",
    "isPlayerHudComponentVisible",
    "isPlayerMapForced",
    "isPlayerMapVisible",
    "isPlayerNametagShowing",
    "isVoiceEnabled",
    "resetBlurLevel",
    "setPlayerBlurLevel",
    "setPlayerHudComponentVisible",
    "setPlayerMoney",
    "setPlayerNametagColor",
    "setPlayerNametagShowing",
    "setPlayerNametagText",
    "takePlayerMoney",
    "createProjectile",
    "detonateSatchels",
    "getProjectileCounter",
    "getProjectileCreator",
    "getProjectileForce",
    "getProjectileTarget",
    "getProjectileType",
    "setProjectileCounter",
    "createRadarArea",
    "getRadarAreaColor",
    "getRadarAreaSize",
    "isInsideRadarArea",
    "isRadarAreaFlashing",
    "setRadarAreaColor",
    "setRadarAreaFlashing",
    "setRadarAreaSize",
    "call",
    "fetchRemote",
    "getResourceConfig",
    "getResourceDynamicElementRoot",
    "getResourceExportedFunctions",
    "getResourceFromName",
    "getResourceGUIElement",
    "getResourceName",
    "getResourceRootElement",
    "getResourceState",
    "getThisResource",
    "getRemoteRequests",
    "getRemoteRequestInfo",
    "abortRemoteRequest",
    "createSearchLight",
    "getSearchLightEndPosition",
    "getSearchLightEndRadius",
    "getSearchLightStartPosition",
    "getSearchLightStartRadius",
    "setSearchLightEndPosition",
    "setSearchLightEndRadius",
    "setSearchLightStartPosition",
    "setSearchLightStartRadius",
    "svgCreate",
    "svgGetDocumentXML",
    "svgGetSize",
    "svgSetDocumentXML",
    "svgSetSize",
    "svgSetUpdateCallback",
    "countPlayersInTeam",
    "getPlayersInTeam",
    "getTeamColor",
    "getTeamFriendlyFire",
    "getTeamFromName",
    "getTeamName",
    "addDebugHook",
    "base64Decode",
    "base64Encode",
    "bitAnd",
    "bitNot",
    "bitOr",
    "bitXor",
    "bitTest",
    "bitLRotate",
    "bitRRotate",
    "bitLShift",
    "bitRShift",
    "bitArShift",
    "bitExtract",
    "bitReplace",
    "createTrayNotification",
    "debugSleep",
    "downloadFile",
    "decodeString",
    "encodeString",
    "fromJSON",
    "getColorFromString",
    "getDevelopmentMode",
    "getDistanceBetweenPoints2D",
    "getDistanceBetweenPoints3D",
    "getEasingValue",
    "getFPSLimit",
    "getKeyboardLayout",
    "getLocalization",
    "getNetworkStats",
    "getNetworkUsageData",
    "getPerformanceStats",
    "getRealTime",
    "getTickCount",
    "getTimers",
    "getTimerDetails",
    "gettok",
    "getUserdataType",
    "getVersion",
    "hash",
    "inspect",
    "interpolateBetween",
    "iprint",
    "isOOPEnabled",
    "isShowCollisionsEnabled",
    "isShowSoundEnabled",
    "isTimer",
    "isTransferBoxAlwaysVisible",
    "isTransferBoxVisible",
    "isTrayNotificationEnabled",
    "killTimer",
    "md5",
    "passwordHash",
    "passwordVerify",
    "pregFind",
    "pregMatch",
    "pregReplace",
    "removeDebugHook",
    "resetTimer",
    "setClipboard",
    "setDevelopmentMode",
    "setFPSLimit",
    "setTimer",
    "setTransferBoxVisible",
    "setWindowFlashing",
    "sha256",
    "showCol",
    "showSound",
    "split",
    "teaDecode",
    "teaEncode",
    "tocolor",
    "toJSON",
    "utfChar",
    "utfCode",
    "utfLen",
    "utfSeek",
    "utfSub",
    "utf8.byte",
    "utf8.char",
    "utf8.charpos",
    "utf8.escape",
    "utf8.find",
    "utf8.fold",
    "utf8.gmatch",
    "utf8.gsub",
    "utf8.insert",
    "utf8.len",
    "utf8.lower",
    "utf8.match",
    "utf8.ncasecmp",
    "utf8.next",
    "utf8.remove",
    "utf8.reverse",
    "utf8.sub",
    "utf8.title",
    "utf8.upper",
    "utf8.width",
    "utf8.widthindex",
    "addVehicleUpgrade",
    "areVehicleLightsOn",
    "attachTrailerToVehicle",
    "blowVehicle",
    "createVehicle",
    "detachTrailerFromVehicle",
    "fixVehicle",
    "getHeliBladeCollisionsEnabled",
    "getHelicopterRotorSpeed",
    "getOriginalHandling",
    "getTrainDirection",
    "getTrainPosition",
    "getTrainSpeed",
    "getVehicleAdjustableProperty",
    "getVehicleColor",
    "getVehicleCompatibleUpgrades",
    "getVehicleComponentPosition",
    "getVehicleComponentRotation",
    "getVehicleComponents",
    "getVehicleComponentScale",
    "getVehicleComponentVisible",
    "getVehicleController",
    "getVehicleCurrentGear",
    "getVehicleDoorOpenRatio",
    "getVehicleDoorState",
    "getVehicleDummyPosition",
    "getVehicleEngineState",
    "getVehicleGravity",
    "getVehicleHandling",
    "getVehicleHeadLightColor",
    "getVehicleLandingGearDown",
    "getVehicleLightState",
    "getVehicleMaxPassengers",
    "getVehicleModelDummyDefaultPosition",
    "getVehicleModelDummyPosition",
    "getVehicleModelExhaustFumesPosition",
    "getVehicleModelFromName",
    "getVehicleModelWheelSize",
    "getVehicleName",
    "getVehicleNameFromModel",
    "getVehicleNitroCount",
    "getVehicleNitroLevel",
    "getVehicleOccupant",
    "getVehicleOccupants",
    "getVehicleOverrideLights",
    "getVehiclePaintjob",
    "getVehiclePanelState",
    "getVehiclePlateText",
    "getVehicleSirenParams",
    "getVehicleSirens",
    "getVehicleSirensOn",
    "getVehicleTowedByVehicle",
    "getVehicleTowingVehicle",
    "getVehicleTurnVelocity",
    "getVehicleTurretPosition",
    "getVehicleType",
    "getVehicleUpgradeOnSlot",
    "getVehicleUpgrades",
    "getVehicleUpgradeSlotName",
    "getVehicleVariant",
    "getVehicleWheelFrictionState",
    "getVehicleWheelScale",
    "getVehicleWheelStates",
    "isTrainChainEngine",
    "isTrainDerailable",
    "isTrainDerailed",
    "isVehicleBlown",
    "isVehicleDamageProof",
    "isVehicleFuelTankExplodable",
    "isVehicleLocked",
    "isVehicleNitroActivated",
    "isVehicleNitroRecharging",
    "isVehicleOnGround",
    "isVehicleTaxiLightOn",
    "isVehicleWheelOnGround",
    "isVehicleWindowOpen",
    "removeVehicleUpgrade",
    "resetVehicleComponentPosition",
    "resetVehicleComponentRotation",
    "resetVehicleComponentScale",
    "resetVehicleDummyPositions",
    "setHeliBladeCollisionsEnabled",
    "setHelicopterRotorSpeed",
    "setTrainDerailable",
    "setTrainDerailed",
    "setTrainDirection",
    "setTrainPosition",
    "setTrainSpeed",
    "setVehicleAdjustableProperty",
    "setVehicleColor",
    "setVehicleComponentPosition",
    "setVehicleComponentRotation",
    "setVehicleComponentScale",
    "setVehicleComponentVisible",
    "setVehicleDamageProof",
    "setVehicleDirtLevel",
    "setVehicleDoorOpenRatio",
    "setVehicleDoorState",
    "setVehicleDoorsUndamageable",
    "setVehicleDummyPosition",
    "setVehicleEngineState",
    "setVehicleFuelTankExplodable",
    "setVehicleGravity",
    "setVehicleHandling",
    "setVehicleHeadLightColor",
    "setVehicleLandingGearDown",
    "setVehicleLightState",
    "setVehicleLocked",
    "setVehicleModelDummyPosition",
    "setVehicleModelExhaustFumesPosition",
    "setVehicleModelWheelSize",
    "setVehicleNitroActivated",
    "setVehicleNitroCount",
    "setVehicleNitroLevel",
    "setVehicleOverrideLights",
    "setVehiclePaintjob",
    "setVehiclePanelState",
    "setVehiclePlateText",
    "setVehicleSirens",
    "setVehicleSirensOn",
    "setVehicleTaxiLightOn",
    "setVehicleTurnVelocity",
    "setVehicleTurretPosition",
    "setVehicleVariant",
    "setVehicleWheelScale",
    "setVehicleWheelStates",
    "setVehicleWindowOpen",
    "createWater",
    "getWaterColor",
    "getWaterLevel",
    "getWaterVertexPosition",
    "getWaveHeight",
    "isWaterDrawnLast",
    "resetWaterColor",
    "resetWaterLevel",
    "setWaterColor",
    "setWaterDrawnLast",
    "setWaterLevel",
    "setWaterVertexPosition",
    "setWaveHeight",
    "getOriginalWeaponProperty",
    "getSlotFromWeapon",
    "getWeaponIDFromName",
    "getWeaponNameFromID",
    "getWeaponProperty",
    "createWeapon",
    "fireWeapon",
    "getWeaponAmmo",
    "getWeaponClipAmmo",
    "getWeaponFiringRate",
    "getWeaponFlags",
    "getWeaponOwner",
    "getWeaponState",
    "getWeaponTarget",
    "resetWeaponFiringRate",
    "setWeaponAmmo",
    "setWeaponClipAmmo",
    "setWeaponFiringRate",
    "setWeaponFlags",
    "setWeaponProperty",
    "setWeaponState",
    "setWeaponTarget",
    "areTrafficLightsLocked",
    "createSWATRope",
    "getAircraftMaxHeight",
    "getAircraftMaxVelocity",
    "getBirdsEnabled",
    "getCloudsEnabled",
    "getCoronaReflectionsEnabled",
    "getFarClipDistance",
    "getFogDistance",
    "getGameSpeed",
    "getGarageBoundingBox",
    "getGaragePosition",
    "getGarageSize",
    "getGravity",
    "getGroundPosition",
    "getHeatHaze",
    "getInteriorFurnitureEnabled",
    "getInteriorSoundsEnabled",
    "getJetpackMaxHeight",
    "getMinuteDuration",
    "getMoonSize",
    "getNearClipDistance",
    "getOcclusionsEnabled",
    "getPedsLODDistance",
    "getRainLevel",
    "getRoofPosition",
    "getScreenFromWorldPosition",
    "getSunColor",
    "getSunSize",
    "getTime",
    "getTrafficLightState",
    "getVehiclesLODDistance",
    "getWeather",
    "getWindVelocity",
    "getWorldFromScreenPosition",
    "getZoneName",
    "isAmbientSoundEnabled",
    "isGarageOpen",
    "isLineOfSightClear",
    "isWorldSoundEnabled",
    "isWorldSpecialPropertyEnabled",
    "processLineOfSight",
    "removeWorldModel",
    "resetAmbientSounds",
    "resetColorFilter",
    "resetCoronaReflectionsEnabled",
    "resetFarClipDistance",
    "resetFogDistance",
    "resetHeatHaze",
    "resetMoonSize",
    "resetNearClipDistance",
    "resetPedsLODDistance",
    "resetRainLevel",
    "resetSkyGradient",
    "resetSunColor",
    "resetSunSize",
    "resetVehiclesLODDistance",
    "resetWindVelocity",
    "resetWorldSounds",
    "restoreAllWorldModels",
    "restoreWorldModel",
    "setAircraftMaxHeight",
    "setAircraftMaxVelocity",
    "setAmbientSoundEnabled",
    "setBirdsEnabled",
    "setCloudsEnabled",
    "setColorFilter",
    "setCoronaReflectionsEnabled",
    "setFarClipDistance",
    "setFogDistance",
    "setGameSpeed",
    "setGarageOpen",
    "setGravity",
    "setHeatHaze",
    "setInteriorFurnitureEnabled",
    "setInteriorSoundsEnabled",
    "setJetpackMaxHeight",
    "setMinuteDuration",
    "setMoonSize",
    "setNearClipDistance",
    "setOcclusionsEnabled",
    "setPedsLODDistance",
    "setRainLevel",
    "setSkyGradient",
    "setSunColor",
    "setSunSize",
    "setTime",
    "setTrafficLightsLocked",
    "setTrafficLightState",
    "setVehiclesLODDistance",
    "setWeather",
    "setWeatherBlended",
    "setWindVelocity",
    "setWorldSoundEnabled",
    "setWorldSpecialPropertyEnabled",
    "testLineAgainstWater",
    "xmlCopyFile",
    "xmlCreateChild",
    "xmlCreateFile",
    "xmlDestroyNode",
    "xmlFindChild",
    "xmlLoadFile",
    "xmlLoadString",
    "xmlNodeGetAttribute",
    "xmlNodeGetAttributes",
    "xmlNodeGetChildren",
    "xmlNodeGetName",
    "xmlNodeGetParent",
    "xmlNodeGetValue",
    "xmlNodeSetAttribute",
    "xmlNodeSetName",
    "xmlNodeSetValue",
    "xmlSaveFile",
    "xmlUnloadFile",
    "addAccount",
    "copyAccountData",
    "getAccount",
    "getAccountData",
    "getAccountName",
    "getAccountPlayer",
    "getAccountSerial",
    "getAccounts",
    "getAccountsBySerial",
    "getAllAccountData",
    "getPlayerAccount",
    "isGuestAccount",
    "logIn",
    "logOut",
    "removeAccount",
    "setAccountData",
    "setAccountPassword",
    "getAccountByID",
    "getAccountID",
    "getAccountIP",
    "getAccountsByData",
    "getAccountsByIP",
    "setAccountName",
    "aclCreate",
    "aclCreateGroup",
    "aclDestroy",
    "aclDestroyGroup",
    "aclGet",
    "aclGetGroup",
    "aclGetName",
    "aclGetRight",
    "aclGroupAddACL",
    "aclGroupAddObject",
    "aclGroupGetName",
    "aclGroupList",
    "aclGroupListACL",
    "aclGroupListObjects",
    "aclGroupRemoveACL",
    "aclGroupRemoveObject",
    "aclList",
    "aclListRights",
    "aclReload",
    "aclRemoveRight",
    "aclSave",
    "aclSetRight",
    "hasObjectPermissionTo",
    "isObjectInACLGroup",
    "addBan",
    "banPlayer",
    "getBanAdmin",
    "getBanIP",
    "getBanNick",
    "getBanReason",
    "getBanSerial",
    "getBanTime",
    "getBanUsername",
    "getBans",
    "getUnbanTime",
    "isBan",
    "kickPlayer",
    "setBanAdmin",
    "setBanNick",
    "setBanReason",
    "setUnbanTime",
    "reloadBans",
    "removeBan",
    "getGameType",
    "getMapName",
    "getRuleValue",
    "removeRuleValue",
    "setGameType",
    "setMapName",
    "setRuleValue",
    "addElementDataSubscriber",
    "clearElementVisibleTo",
    "cloneElement",
    "getElementByIndex",
    "getElementSyncer",
    "getElementZoneName",
    "hasElementData",
    "hasElementDataSubscriber",
    "isElementVisibleTo",
    "removeElementData",
    "removeElementDataSubscriber",
    "setElementSyncer",
    "setElementVisibleTo",
    "getCancelReason",
    "triggerClientEvent",
    "triggerLatentClientEvent",
    "httpClear",
    "httpRequestLogin",
    "httpSetResponseCode",
    "httpSetResponseCookie",
    "httpSetResponseHeader",
    "httpWrite",
    "getControlState",
    "isKeyBound",
    "setControlState",
    "loadMapData",
    "resetMapInfo",
    "saveMapData",
    "getLoadedModules",
    "getModuleInfo",
    "outputServerLog",
    "getPedGravity",
    "reloadPedWeapon",
    "setPedChoking",
    "setPedGravity",
    "setPedWearingJetpack",
    "getPickupRespawnInterval",
    "isPickupSpawned",
    "setPickupRespawnInterval",
    "usePickup",
    "getAlivePlayers",
    "getDeadPlayers",
    "getPlayerACInfo",
    "getPlayerAnnounceValue",
    "getPlayerCount",
    "getPlayerIdleTime",
    "getPlayerIP",
    "getPlayerScriptDebugLevel",
    "getPlayerSerial",
    "getPlayerVersion",
    "getRandomPlayer",
    "isPlayerMuted",
    "redirectPlayer",
    "resendPlayerACInfo",
    "resendPlayerModInfo",
    "setPlayerAnnounceValue",
    "setPlayerMuted",
    "setPlayerName",
    "setPlayerScriptDebugLevel",
    "setPlayerTeam",
    "setPlayerVoiceBroadcastTo",
    "setPlayerVoiceIgnoreFrom",
    "setPlayerWantedLevel",
    "spawnPlayer",
    "takePlayerScreenShot",
    "addResourceConfig",
    "addResourceMap",
    "callRemote",
    "copyResource",
    "createResource",
    "deleteResource",
    "getResourceACLRequests",
    "getResourceInfo",
    "getResourceLastStartTime",
    "getResourceLoadFailureReason",
    "getResourceLoadTime",
    "getResourceMapRootElement",
    "getResourceOrganizationalPath",
    "getResources",
    "isResourceArchived",
    "isResourceProtected",
    "refreshResources",
    "removeResourceFile",
    "renameResource",
    "restartResource",
    "setResourceInfo",
    "startResource",
    "stopResource",
    "updateResourceACLRequest",
    "getMaxPlayers",
    "getServerHttpPort",
    "getServerName",
    "getServerPassword",
    "getServerPort",
    "isGlitchEnabled",
    "setGlitchEnabled",
    "setMaxPlayers",
    "setServerPassword",
    "shutdown",
    "get",
    "set",
    "executeSQLQuery",
    "dbConnect",
    "dbExec",
    "dbFree",
    "dbPoll",
    "dbPrepareString",
    "dbQuery",
    "createTeam",
    "setTeamColor",
    "setTeamFriendlyFire",
    "setTeamName",
    "textCreateDisplay",
    "textCreateTextItem",
    "textDestroyDisplay",
    "textDestroyTextItem",
    "textDisplayAddObserver",
    "textDisplayAddText",
    "textDisplayGetObservers",
    "textDisplayIsObserver",
    "textDisplayRemoveObserver",
    "textDisplayRemoveText",
    "textItemGetColor",
    "textItemGetPosition",
    "textItemGetPriority",
    "textItemGetScale",
    "textItemGetText",
    "textItemSetColor",
    "textItemSetPosition",
    "textItemSetPriority",
    "textItemSetScale",
    "textItemSetText",
    "deref",
    "generateKeyPair",
    "getProcessMemoryStats",
    "getServerConfigSetting",
    "ref",
    "setServerConfigSetting",
    "addVehicleSirens",
    "getModelHandling",
    "getVehicleRespawnPosition",
    "getVehicleRespawnRotation",
    "getVehiclesOfType",
    "removeVehicleSirens",
    "resetVehicleExplosionTime",
    "resetVehicleIdleTime",
    "respawnVehicle",
    "setModelHandling",
    "setVehicleIdleRespawnDelay",
    "setVehicleRespawnDelay",
    "setVehicleRespawnPosition",
    "setVehicleRespawnRotation",
    "spawnVehicle",
    "toggleVehicleRespawn",
    "giveWeapon",
    "takeAllWeapons",
    "takeWeapon",
    "getJetpackWeaponEnabled",
    "getSkyGradient",
    "setJetpackWeaponEnabled",
    "getTrainTrack",
    "setTrainTrack",
    "initMeasure",
    "renderMeasure",
    "unpack",
    "pairs",
    "ipairs",
    "type",
    "rawget",
    "rawset",
    "setmetatable",
    "getmetatable",
    "tostring",
    "isMTAWindowFocused",
    "functionCallStart",
    "print",
}

local measure = false
local sx, sy = guiGetScreenSize()
local font = 'default'
local fontHeight = dxGetFontHeight(1, font)
local menu = {sx/2 - 340, sy/2 - 210, 630, 350, holding = false}

local function tableIncludes(array, value)
    for _, v in ipairs(array) do
        if v == value then
            return true
        end
    end
    return false
end

local function isMouseInPosition ( x, y, width, height )
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end

local function tableLength(array)
    local count = 0
    for _ in pairs(array) do
        count = count + 1
    end
    return count
end

local function getRandomBrightColor()
    local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
    while r + g + b < 300 do
        r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
    end
    return tocolor(r, g, b)
end

local function renderMeasure()
    dxDrawRectangle(menu[1], menu[2], menu[3], menu[4], 0xFF222222)
    dxDrawRectangle(menu[1], menu[2], menu[3], fontHeight + 2, 0x11FFFFFF)
    dxDrawText('measure.lua', menu[1] + 4, menu[2] + 1, menu[1] + menu[3], menu[2] + fontHeight + 1, 0x99FFFFFF, 1, font, 'left', 'center')

    local mouseDown = getKeyState('mouse1') or getKeyState('mouse2')

    local tx, ty, tw, th = menu[1] + 6, menu[2] + fontHeight + 8, menu[3] - 12, measure.rows * fontHeight
    dxDrawRectangle(tx, ty, tw, th, 0x33000000)
    if measure.recording then
        dxDrawText('Recording...', tx, ty, tx + tw, ty + th, 0x99FFFFFF, 1.1, 'default-bold', 'center', 'center', true)
    else
        local over = false

        --measure.selectedTimeline = {number, number} | undefined

        local function drawMeasureOnTimeline(data)
            local selected = measure.selectedTimeline or {0, 1}
            local start = measure.recordTime * selected[1]
            local duration = measure.recordTime * (selected[2] - selected[1])
            local nw = data.callTime/duration

            local x = tx + (data.start - start)/duration * tw
            local w = math.max(nw * tw, 1)

            if x + w >= tx and x <= tx + tw then
                if x < tx then
                    w = w - (tx - x)
                    x = tx
                end

                if x + w > tx + tw then
                    w = w - (x + w - (tx + tw))
                end

                local x, y, w, h = x, ty + data.row * fontHeight, w, fontHeight
                dxDrawRectangle(x, y, w, h, data.color)
                dxDrawText(data.name .. '(' .. data.callTime .. 'ms)', x, y, x + w, y + h, 0x99FFFFFF, 1, font, 'center', 'center', true)

                if isMouseInPosition(x, y, w, h) then
                    over = data
                end
            end
        end

        for k,v in pairs(measure.timeline) do
            if k < 9999 then drawMeasureOnTimeline(v) end
        end

        -- add selecting timeline
        local cx, cy = getCursorPosition()
        cx, cy = cx * sx, cy * sy
        local timelineX = (cx - tx) / tw
        -- local timelineX = 

        if over and mouseDown and not measure.selectingTimeline then
            measure.selected = over
        elseif isMouseInPosition(tx, ty, tw, th) and not measure.selectingTimeline and mouseDown and not over then
            measure.selectingTimeline = timelineX
        elseif measure.selectingTimeline then
            if mouseDown then
                local nx, ny, nw, nh = tx, ty, tw, th
                local x = tx + timelineX * tw
                local tx = tx + measure.selectingTimeline * tw
                local x, y, w, h = x, ty, tx - x, th
                if w < 0 then
                    x = x + w
                    w = -w
                end
                if x < nx then
                    w = w - (nx - x)
                    x = nx
                end
                if x + w > nx + nw then
                    w = w - (x + w - (nx + nw))
                end
                dxDrawRectangle(x, y, w, h, 0x33FFFFFF)
            else
                local selected = measure.selectedTimeline or {0, 1}
                local a, b = selected[1] + measure.selectingTimeline*(selected[2] - selected[1]), selected[1] + timelineX*(selected[2] - selected[1])
                if a == b then
                    a, b = 0, 1
                end
                measure.selectedTimeline = {math.min(a, b), math.max(a, b)}
                measure.selectingTimeline = false
            end
        end

        if isMouseInPosition(tx, ty, tw, th) then
            dxDrawRectangle(tx + timelineX * tw, ty, 1, th, 0x99FFFFFF)
        end
    end

    if isMouseInPosition(menu[1] - 2, menu[2] - 2, 4, 4) then
        dxDrawRectangle(menu[1] - 2, menu[2] - 2, 4, 4, 0x44FFFFFF)
        
        if mouseDown and not menu.holding then
            menu.holding = 'LT'
        end
    elseif isMouseInPosition(menu[1] + menu[3] - 2, menu[2] - 2, 4, 4) then
        dxDrawRectangle(menu[1] + menu[3] - 2, menu[2] - 2, 4, 4, 0x44FFFFFF)
        
        if mouseDown and not menu.holding then
            menu.holding = 'RT'
        end
    elseif isMouseInPosition(menu[1] - 2, menu[2] + menu[4] - 2, 4, 4) then
        dxDrawRectangle(menu[1] - 2, menu[2] + menu[4] - 2, 4, 4, 0x44FFFFFF)
        
        if mouseDown and not menu.holding then
            menu.holding = 'LB'
        end
    elseif isMouseInPosition(menu[1] + menu[3] - 2, menu[2] + menu[4] - 2, 4, 4) then
        dxDrawRectangle(menu[1] + menu[3] - 2, menu[2] + menu[4] - 2, 4, 4, 0x44FFFFFF)
        
        if mouseDown and not menu.holding then
            menu.holding = 'RB'
        end
    elseif isMouseInPosition(menu[1], menu[2], menu[3], fontHeight + 2) then
        dxDrawRectangle(menu[1], menu[2], menu[3], fontHeight + 2, 0x22FFFFFF)
        
        if mouseDown and not menu.holding then
            local cx, cy = getCursorPosition()
            cx, cy = cx * sx, cy * sy

            menu.holding = 'T'
            menu.holdingPos = {cx - menu[1], cy - menu[2]}
        end
    end

    if measure.selected then
        local w = dxGetTextWidth('deselect', 1, font) + 10
        dxDrawRectangle(menu[1] + menu[3] - w - 10, ty + th + 5, w, fontHeight, 0x22FFFFFF)
        dxDrawText('deselect', menu[1] + menu[3] - w - 10, ty + th + 5, menu[1] + menu[3] - 10, ty + th + 5 + fontHeight, 0x99FFFFFF, 1, font, 'center', 'center', true)

        if isMouseInPosition(menu[1] + menu[3] - w - 10, ty + th + 5, w, fontHeight) then
            dxDrawRectangle(menu[1] + menu[3] - w - 10, ty + th + 5, w, fontHeight, 0x44FFFFFF)
            
            if mouseDown then
                measure.selected = false
            end
        end

        local data = measure.selected
        if data then
            dxDrawText('Name: ' .. data.name .. ' \
Call time: ' .. data.callTime .. 'ms \
Start: ' .. data.start .. 'ms \
End: ' .. data.start + data.callTime .. 'ms \
Input: ' .. data.args .. ' \
Output: ' .. data.result .. '\
Total calls: ' .. measure.totals[data.name] .. '\
Average call time: ' .. measure.averages[data.name] .. '\
Total call time: ' .. measure.totals[data.name] .. 'ms / ' .. measure.recordTime .. 'ms', menu[1] + 6, ty + th + 5, menu[1] + menu[3] - 12, menu[2] + menu[4] - 5, 0x99FFFFFF, 1, font, 'left', 'top', true)
    end
    elseif not measure.recording then
        local y = 0
        for k,v in pairs(measure.top) do
            do
                local w = dxGetTextWidth('deselect', 1, font) + 10
                local x, y, w, h = menu[1] + 6, ty + th + 5 + y, menu[3] - 22 - w, fontHeight + 2
                if isMouseInPosition(x, y, w, h) then
                    dxDrawRectangle(x, y, w, h, 0x22FFFFFF)

                    if mouseDown and not menu.holding then
                        for k,e in pairs(measure.timeline) do
                            if e.name == v.name then
                                measure.selected = e
                                break
                            end
                        end
                    end
                end
            end

            dxDrawText(v.name .. ' = ' .. v.total .. 'ms', menu[1] + 6, ty + th + 5 + y, menu[1] + menu[3] - 12, menu[2] + menu[4] - 5, 0x99FFFFFF, 1, font, 'left', 'top', true)
            y = y + fontHeight + 2
        end
    end

    if mouseDown and menu.holding then
        local cx, cy = getCursorPosition()
        cx, cy = cx * sx, cy * sy

        if menu.holding == 'LT' then
            local dx = cx - menu[1]
            local dy = cy - menu[2]
            menu[1] = cx
            menu[2] = cy
            menu[3] = math.max(100, menu[3] - dx)
            menu[4] = math.max(100, menu[4] - dy)
        elseif menu.holding == 'RT' then
            local dx = cx - (menu[1] + menu[3])
            local dy = cy - menu[2]
            menu[2] = cy
            menu[3] = math.max(100, menu[3] + dx)
            menu[4] = math.max(100, menu[4] - dy)
        elseif menu.holding == 'LB' then
            local dx = cx - menu[1]
            local dy = cy - (menu[2] + menu[4])
            menu[1] = cx
            menu[3] = math.max(100, menu[3] - dx)
            menu[4] = math.max(100, menu[4] + dy)
        elseif menu.holding == 'RB' then
            local dx = cx - (menu[1] + menu[3])
            local dy = cy - (menu[2] + menu[4])
            menu[3] = math.max(100, menu[3] + dx)
            menu[4] = math.max(100, menu[4] + dy)
        elseif menu.holding == 'T' then
            menu[1] = cx - menu.holdingPos[1]
            menu[2] = cy - menu.holdingPos[2]
        end
    else
        menu.holding = false
    end
end

local function functionCallStart(name, ...)
    if not measure or not measure.recording then return end

    local id = math.random(1, 10000)
    measure.call[id] = {
        name = name,
        start = getTickCount(),
        args = {...},
        row = measure.row
    }
    measure.row = measure.row + 1
    measure.rows = math.max(measure.rows, measure.row)
    return id
end

local function functionCallEnd(id, result)
    if not measure or not measure.recording or not measure.call then return end

    local data = measure.call[id]
    if not data then
        measure.row = measure.row - 1
        return
    end
    local name = data.name

    if not measure.data[name] then
        measure.data[name] = {
            color = getRandomBrightColor()
        }
    end

    table.insert(measure.data[name], {
        start = data.start,
        callTime = (getTickCount() - data.start),
        args = inspect(data.args),
        result = inspect(result),
        row = data.row
    })

    measure.row = measure.row - 1
    measure.call[id] = nil
end

function recordMeasure(ignore)
    if measure then destroyMeasure() end
    ignore = ignore or {}
    measure = {
        recording = true,
        recordStart = getTickCount(),
        data = {},
        originals = {},
        call = {},
        row = 0,
        rows = 1
    }

    for name,callback in pairs(_G) do
        if type(callback) == 'function' and not tableIncludes(ignore, name) and not tableIncludes(ignoredFunctions, name) then
            local prev = _G[name]
            measure.originals[name] = prev
            _G[name] = function(...)
                local id = functionCallStart(name, ...)
                local result = {prev(...)}
                functionCallEnd(id, result)
                return unpack(result)
            end
        end
    end

    measure.attachedCount = tableLength(measure.data)
    addEventHandler('onClientRender', root, renderMeasure)
end

function stopRecordingMeasure()
    if not measure or not measure.recording then return end
    measure.recording = false

    measure.timeline = {}
    local totals = {}
    local calls = {}
    for name,data in pairs(measure.data) do
        for i,call in ipairs(data) do
            if not totals[name] then
                totals[name] = 0
                calls[name] = 0
            end
            totals[name] = totals[name] + call.callTime
            calls[name] = calls[name] + 1
            table.insert(measure.timeline, {
                name = name,
                start = call.start - measure.recordStart,
                callTime = call.callTime,
                args = call.args:sub(3, #call.args - 2),
                result = call.result:sub(3, #call.result - 2),
                color = data.color,
                row = call.row
            })
        end
    end

    -- calc averages
    local averages = {}
    for name,total in pairs(totals) do
        averages[name] = total / calls[name]
    end

    table.sort(measure.timeline, function(a, b)
        return a.start < b.start
    end)

    for name,callback in pairs(measure.originals) do
        _G[name] = callback
    end

    measure.recordTime = (getTickCount() - measure.recordStart)
    measure.totals = totals
    measure.averages = averages
    measure.calls = calls
    measure.data = nil

    measure.top = {}
    for k,v in pairs(measure.totals) do
        table.insert(measure.top, {name = k, total = v})
    end
    table.sort(measure.top, function(a, b)
        return a.total > b.total
    end)
end

function destroyMeasure()
    removeEventHandler('onClientRender', root, renderMeasure)
    measure = nil
    collectgarbage()
end