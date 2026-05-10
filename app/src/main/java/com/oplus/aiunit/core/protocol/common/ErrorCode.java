package com.oplus.aiunit.core.protocol.common;

import b5.a;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.data.UnitState;

/* JADX INFO: loaded from: classes.dex */
public enum ErrorCode {
    UNKNOWN(-1),
    kErrorNone(0),
    kErrorOperationNoPerm(1),
    kErrorNoSuchFileOrDirectory(2),
    kErrorIOError(5),
    kErrorParamLengthMismatch(7),
    kErrorNoMemory(12),
    kErrorPermissionDenied(13),
    kErrorBusy(16),
    kErrorFileExists(17),
    kErrorNotADirectory(20),
    kErrorIsADirectory(21),
    kErrorInvalidParam(22),
    kErrorTooManyFiles(24),
    kErrorFileTooBig(27),
    kErrorReadOnlyFile(30),
    kErrorOutOfMathDomain(33),
    kErrorOutOfMathRange(34),
    kErrorFileNameTooLong(36),
    kErrorMethodNotImplement(38),
    kErrorDirectoryNotEmpty(39),
    kErrorNoDataAvailable(61),
    kErrorTimeOut(62),
    kErrorOutOfResources(63),
    kErrorCommunication(70),
    kErrorProtocol(71),
    kErrorCannotExecASharedLib(83),
    kErrorNoBufferSpace(105),
    kErrorRemoteDead(106),
    KErrorNetworkUnavailable(107),
    kErrorStop(108),
    kErrorRequestLimit(109),
    kErrorCancelledByUser(110),
    kErrorEnvFailed(200),
    kErrorGetRuntime(a.CODE_SCANNER_CANCELLED),
    kErrorInterrupt(a.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED),
    kErrorNewTask(203),
    kErrorScheduleApi(a.CODE_SCANNER_TASK_IN_PROGRESS),
    kErrorTaskPending(a.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR),
    kErrorRepeatedTask(a.CODE_SCANNER_PIPELINE_INFERENCE_ERROR),
    kErrorInvalidTask(a.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD),
    kErrorRepeatedLlmTask(208),
    kErrorEnvBattery(211),
    kErrorEnvMemory(212),
    kErrorEnvGaming(213),
    kErrorEnvNetwork(214),
    kErrorEnvPower(215),
    kErrorEnvTemperature(216),
    kErrorScreenState(217),
    kErrorLlmOapAlive(218),
    kErrorEngineNotFound(300),
    kErrorConfigFileInvalid(301),
    kErrorConfigInvalid(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE),
    kErrorModelFileNotFound(COUIHapticFeedbackConstants.SHORT_VIBRATE),
    kErrorModelFileInvalid(304),
    kErrorInvalidServiceState(COUIHapticFeedbackConstants.STEPPING_SHORT_VIBRATE),
    kErrorCodeExpiration(COUIHapticFeedbackConstants.EDGE_SHORT_VIBRATE),
    kErrorNotReady(COUIHapticFeedbackConstants.EDGE_LIST_VIBRATE),
    kErrorVersionMismatch(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE_SYNC),
    kErrorServiceVersionOutOfDate(309),
    kErrorClientVersionOutOfDate(310),
    kErrorNoNeed(311),
    kErrorPluginVersion(312),
    kErrorPluginManifest(313),
    kErrorCheckSumInvalid(314),
    kErrorOaaNotFound(350),
    kErrorNotInit(400),
    kErrorPluginNotFound(401),
    kErrorPluginNoVersion(402),
    kErrorPluginNoPluginImplementation(403),
    kErrorPluginClassNotInstantiation(404),
    kErrorAssetsFilesIllegal(405),
    kErrorAssetsCopyFailed(406),
    kErrorPluginLoadFailed(407),
    kErrorNoClassLoader(408),
    kErrorNoPluginContext(409),
    kErrorPluginPathNotExists(410),
    KErrorClassNotFound(411),
    kErrorMDPError(500),
    kErrorSynchronizeFailed(501),
    kErrorPluginNotUsable(502),
    kErrorFileCRCError(503),
    kErrorNoUpdate(504),
    kErrorNoRemoteConfig(505),
    kErrorConfigNotIllegalNoDownloadParam(506),
    kErrorDownloadError(507),
    kErrorSyncFailed(508),
    kErrorDetectorHasEmptyEngine(509),
    kErrorDetectorUpdateSubEngineFailed(510),
    kErrorUnknownConfig(511),
    kErrorDownloadNotAllowed(ConfigPackage.FRAME_SIZE_1),
    kErrorUpdateInMainThread(513),
    kErrorUpdateButNoListener(514),
    kErrorUpdateWaitFailed(515),
    kErrorRouteDisabled(UIUtil.MEDIUM_WIDTH_DP),
    kErrorRouteNotFound(601),
    kErrorApiLevelNotSupported(700),
    kErrorSdkVersionNotSupported(701),
    kErrorAIUnitVersionNotSupported(702),
    kErrorOSVersionNotSupported(703),
    kErrorDeviceNotSupported(704),
    kErrorUnitNotFound(VibrateUtils.STRENGTH_MIN_EDGE),
    kErrorDetectorNotFound(801),
    kErrorAuthorizeFail(802),
    kErrorRouterFail(803),
    kErrorAttachFail(804),
    kErrorProcessFail(805),
    kErrorLowMemory(UnitState.STATE_UNAVAILABLE_LOW_MEMORY),
    kErrorLowBattery(UnitState.STATE_UNAVAILABLE_LOW_BATTERY),
    kErrorLowPowerSaveModel(UnitState.STATE_UNAVAILABLE_POWER_SAVE_MODEL),
    kErrorOverload(UnitState.STATE_UNAVAILABLE_OVERLOAD),
    kErrorHighTemperature(UnitState.STATE_UNAVAILABLE_HIGH_TEMPERATURE),
    kErrorUserForceLocal(UnitState.STATE_UNAVAILABLE_WITH_INTERNET_BY_FORCE_LOCAL),
    kErrorPrivacyReject(UnitState.STATE_UNAVAILABLE_PRIVACY_REJECT),
    kErrorUrlEmpty(UnitState.STATE_UNAVAILABLE_URL_EMPTY),
    kErrorNoInternet(950),
    kErrorNoDownload(951),
    kErrorSwitchClose(952),
    kErrorNoApply(953),
    kErrorApplying(954),
    kErrorApplyFail(955),
    kErrorNoAccount(956),
    kErrorOffline(957),
    kErrorDetectNotInit(958),
    kErrorDetectNotAvailable(959),
    kErrorInProcessing(960),
    kErrorDetectNotInstalled(961),
    kErrorConcurrencyError(962);

    private int value;

    ErrorCode(int i10) {
        this.value = i10;
    }

    public static ErrorCode find(int i10) {
        ErrorCode errorCode;
        int i11 = 0;
        while (true) {
            if (i11 >= values().length) {
                errorCode = null;
                break;
            }
            if (values()[i11].equals(i10)) {
                errorCode = values()[i11];
                break;
            }
            i11++;
        }
        return errorCode == null ? UNKNOWN : errorCode;
    }

    public boolean equals(int i10) {
        return this.value == i10;
    }

    public int value() {
        return this.value;
    }
}
