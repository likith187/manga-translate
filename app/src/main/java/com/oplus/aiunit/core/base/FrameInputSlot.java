package com.oplus.aiunit.core.base;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.Image;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.callback.IProcessCallback;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.protocol.common.ImageFormat;
import com.oplus.aiunit.core.utils.AILog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class FrameInputSlot extends FrameSlot {
    private static final String DEFAULT_INPUT_TAG = "input_0";
    public static final int ERROR_APPLY_FAILED = -2;
    public static final int ERROR_PARAM_INVALID = -1;
    public static final int ERROR_YUV_TRANS_FAILED = -3;
    private static final String INPUT_TAG_PREFIX = "input_";
    public static final String INPUT_TYPE_DOUBLE_ARRAY = "double_array";
    public static final String INPUT_TYPE_DOUBLE_ARRAY_2D = "double_array_2D";
    public static final String INPUT_TYPE_FLOAT_ARRAY = "float_array";
    public static final String INPUT_TYPE_FLOAT_ARRAY_2D = "float_array_2D";
    public static final String INPUT_TYPE_INT_ARRAY = "int_array";
    public static final String INPUT_TYPE_INT_ARRAY_2D = "int_array_2D";
    private static final String TAG = "FrameInputSlot";
    private ErrorCode mErrorCode;
    protected String mJsonSource;
    private final ParamPackage mParamPackage;

    public FrameInputSlot(AIContext aIContext) {
        super(aIContext);
        this.mJsonSource = "";
        this.mParamPackage = new ParamPackage();
        this.mErrorCode = ErrorCode.kErrorNone;
    }

    public ParamPackage getCustomParam() {
        return this.mParamPackage;
    }

    public ErrorCode getErrorCode() {
        return this.mErrorCode;
    }

    public String getJsonSource() {
        return this.mJsonSource;
    }

    public int setBitmap(Bitmap bitmap, String str, Boolean bool) {
        if (bitmap == null || bitmap.isRecycled()) {
            AILog.w(TAG, "set bitmap is null.");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "ai context is null");
            return -1;
        }
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(bitmap.getByteCount());
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "frame unit apply failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(str);
        frameUnitApplyFrameUnit.setFlag(1);
        if (bool.booleanValue() || bitmap.getConfig() == Bitmap.Config.HARDWARE) {
            frameUnitApplyFrameUnit.setBinderBitmap(bitmap);
        }
        frameUnitApplyFrameUnit.receiveBitmap(bitmap);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public void setCustomParam(String str, String str2) {
        this.mParamPackage.setParam("custom::" + str, str2);
    }

    public int setData(byte[] bArr, int i10, int i11, ImageFormat imageFormat, String str) {
        if (bArr == null || bArr.length == 0 || i10 <= 0 || i11 <= 0) {
            AILog.e(TAG, "invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setData aiContext is null");
            return -1;
        }
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(bArr.length);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setData applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setImageFormatDirectly(imageFormat);
        frameUnitApplyFrameUnit.setTag(str);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(i10);
        frameUnitApplyFrameUnit.setHeight(i11);
        frameUnitApplyFrameUnit.setData(bArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public int setDoubleArray(double[] dArr) {
        if (dArr == null || dArr.length == 0) {
            AILog.e(TAG, "setDoubleArray invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setDoubleArray aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_DOUBLE_ARRAY);
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(dArr.length, 1, 8)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataDoubleArray(dArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setDoubleArray failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_DOUBLE_ARRAY);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(dArr.length * 8);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setDoubleArray applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_DOUBLE_ARRAY);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(dArr.length);
        frameUnitApplyFrameUnit.setHeight(1);
        frameUnitApplyFrameUnit.setChannel(8);
        frameUnitApplyFrameUnit.setSpecialDataDoubleArray(dArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public int setDoubleArray2D(double[][] dArr) {
        if (dArr == null || dArr.length == 0) {
            AILog.e(TAG, "setDoubleArray2D invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setDoubleArray2D aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_DOUBLE_ARRAY_2D);
        int length = dArr.length;
        int length2 = dArr[0].length;
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(length, length2, 8)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataDoubleArray2D(dArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setDoubleArray2D failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_DOUBLE_ARRAY_2D);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(length * length2 * 8);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setDoubleArray2D applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_DOUBLE_ARRAY_2D);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(length);
        frameUnitApplyFrameUnit.setHeight(length2);
        frameUnitApplyFrameUnit.setChannel(8);
        frameUnitApplyFrameUnit.setSpecialDataDoubleArray2D(dArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public void setError(ErrorCode errorCode) {
        this.mErrorCode = errorCode;
    }

    public int setFloatArray(float[] fArr) {
        if (fArr == null || fArr.length == 0) {
            AILog.e(TAG, "setFloatArray invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setFloatArray aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_FLOAT_ARRAY);
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(fArr.length, 1, 4)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataFloatArray(fArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setFloatArray failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_FLOAT_ARRAY);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(fArr.length * 4);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setFloatArray applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_FLOAT_ARRAY);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(fArr.length);
        frameUnitApplyFrameUnit.setHeight(1);
        frameUnitApplyFrameUnit.setChannel(4);
        frameUnitApplyFrameUnit.setSpecialDataFloatArray(fArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public int setFloatArray2D(float[][] fArr) {
        if (fArr == null || fArr.length == 0) {
            AILog.e(TAG, "setFloatArray2D invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setFloatArray2D aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_FLOAT_ARRAY_2D);
        int length = fArr.length;
        int length2 = fArr[0].length;
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(length, length2, 4)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataFloatArray2D(fArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setFloatArray2D failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_FLOAT_ARRAY_2D);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(length * length2 * 4);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setFloatArray2D applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_FLOAT_ARRAY_2D);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(length);
        frameUnitApplyFrameUnit.setHeight(length2);
        frameUnitApplyFrameUnit.setChannel(4);
        frameUnitApplyFrameUnit.setSpecialDataFloatArray2D(fArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public int setFragmentBitmap(FrameUnit frameUnit, Bitmap bitmap, String str) {
        if (bitmap == null || bitmap.isRecycled()) {
            AILog.w(TAG, "set bitmap is null.");
            return -1;
        }
        if (getAIContext() == null) {
            AILog.e(TAG, "ai context is null");
            return -1;
        }
        FrameUnit frameUnit2 = new FrameUnit(frameUnit, bitmap);
        frameUnit2.setTag(str);
        return addFrameUnit(frameUnit2);
    }

    public int setIntArray(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            AILog.e(TAG, "setIntArray invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setIntArray aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_INT_ARRAY);
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(iArr.length, 1, 4)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataIntArray(iArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setIntArray failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_INT_ARRAY);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(iArr.length * 4);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setIntArray applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_INT_ARRAY);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(iArr.length);
        frameUnitApplyFrameUnit.setHeight(1);
        frameUnitApplyFrameUnit.setChannel(4);
        frameUnitApplyFrameUnit.setSpecialDataIntArray(iArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public int setIntArray2D(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            AILog.e(TAG, "setIntArray2D invalid target data!");
            return -1;
        }
        AIContext aIContext = getAIContext();
        if (aIContext == null) {
            AILog.e(TAG, "setIntArray2D aiContext is null");
            return -1;
        }
        FrameUnit frameUnitFindFrameUnitByTag = findFrameUnitByTag(INPUT_TYPE_INT_ARRAY_2D);
        int length = iArr.length;
        int length2 = iArr[0].length;
        if (frameUnitFindFrameUnitByTag != null && frameUnitFindFrameUnitByTag.getBufferSize() != 0 && frameUnitFindFrameUnitByTag.match(length, length2, 4)) {
            try {
                frameUnitFindFrameUnitByTag.setSpecialDataIntArray2D(iArr);
                return 0;
            } catch (Exception e10) {
                AILog.e(TAG, "setIntArray2D failed. frameUnit size is invalid:" + e10.getMessage());
                return -1;
            }
        }
        removeFrameUnit(INPUT_TYPE_INT_ARRAY_2D);
        FrameUnit frameUnitApplyFrameUnit = aIContext.applyFrameUnit(length * length2 * 4);
        if (frameUnitApplyFrameUnit == null) {
            AILog.e(TAG, "setIntArray2D applyFrameUnit failed.");
            return -2;
        }
        frameUnitApplyFrameUnit.setTag(INPUT_TYPE_INT_ARRAY_2D);
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(length);
        frameUnitApplyFrameUnit.setHeight(length2);
        frameUnitApplyFrameUnit.setChannel(4);
        frameUnitApplyFrameUnit.setSpecialDataIntArray2D(iArr);
        return addFrameUnit(frameUnitApplyFrameUnit);
    }

    public void setJsonSource(String str) {
        this.mJsonSource = str;
    }

    public void setMessenger(IAIMessenger iAIMessenger) {
        this.mParamPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_MESSENGER, iAIMessenger);
    }

    public <E> void setParam(String str, E e10) {
        this.mParamPackage.setParam(str, e10);
    }

    public void setParamBoolean(String str, Boolean bool) {
        this.mParamPackage.setParam(str, bool);
    }

    public void setParamInt(String str, int i10) {
        this.mParamPackage.setParam(str, Integer.valueOf(i10));
    }

    public void setParamString(String str, String str2) {
        this.mParamPackage.setParam(str, str2);
    }

    public void setProcessCallback(IProcessCallback iProcessCallback) {
        try {
            this.mParamPackage.setParam(com.oplus.aisubsystem.core.client.a.PARAM_KEY_PROCESS_CALLBACK_NAME + iProcessCallback.name(), iProcessCallback);
        } catch (Exception e10) {
            AILog.e(TAG, "setProcessCallback: " + e10);
        }
    }

    public int setTargetBitmap(Bitmap bitmap) {
        cleanExistFrameUnit();
        return transErrorCode(setBitmap(bitmap, DEFAULT_INPUT_TAG, Boolean.FALSE)).value();
    }

    public int setTargetData(byte[] bArr, int i10, int i11, ImageFormat imageFormat) {
        cleanExistFrameUnit();
        if (ImageFormat.isYUV(imageFormat.value())) {
            i11 = (i11 * 3) / 2;
        }
        return transErrorCode(setData(bArr, i10, i11, imageFormat, DEFAULT_INPUT_TAG)).value();
    }

    public int setTargetImage(Image image) {
        int format = image.getFormat();
        ImageFormat imageFormat = ImageFormat.YUV_420_888;
        if (format != imageFormat.value()) {
            AILog.e(TAG, "setTargetImage format " + format + "not support");
            ErrorCode errorCode = ErrorCode.kErrorInvalidParam;
            setError(errorCode);
            return errorCode.value();
        }
        AILog.d(TAG, "setTargetImage with image");
        Image.Plane[] planes = image.getPlanes();
        if (planes.length >= 3) {
            return setTargetImage(image.getWidth(), image.getHeight(), imageFormat, image.getCropRect(), planes[0].getBuffer(), planes[1].getBuffer(), planes[2].getBuffer(), planes[0].getRowStride(), planes[1].getRowStride());
        }
        ErrorCode errorCode2 = ErrorCode.kErrorInvalidParam;
        setError(errorCode2);
        return errorCode2.value();
    }

    public ErrorCode transErrorCode(int i10) {
        if (i10 == -3) {
            setError(ErrorCode.kErrorIOError);
        } else if (i10 == -2) {
            setError(ErrorCode.kErrorNoBufferSpace);
        } else if (i10 != -1) {
            setError(ErrorCode.kErrorNone);
        } else {
            setError(ErrorCode.kErrorInvalidParam);
        }
        return getErrorCode();
    }

    public int setTargetBitmap(Bitmap bitmap, Boolean bool) {
        cleanExistFrameUnit();
        return transErrorCode(setBitmap(bitmap, DEFAULT_INPUT_TAG, bool)).value();
    }

    public int setTargetBitmap(Bitmap bitmap, int i10, Boolean bool) {
        cleanExistFrameUnit();
        return transErrorCode(setBitmap(bitmap, INPUT_TAG_PREFIX + i10, bool)).value();
    }

    public int setTargetBitmap(Bitmap bitmap, String str, Boolean bool) {
        cleanExistFrameUnit();
        return transErrorCode(setBitmap(bitmap, str, bool)).value();
    }

    public int setTargetImage(int i10, int i11, ImageFormat imageFormat, Rect rect, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i12, int i13) {
        if (imageFormat != ImageFormat.YUV_420_888) {
            AILog.e(TAG, "setTargetImage format " + imageFormat + "not support");
            ErrorCode errorCode = ErrorCode.kErrorInvalidParam;
            setError(errorCode);
            return errorCode.value();
        }
        cleanExistFrameUnit();
        AILog.d(TAG, "setTargetImage with buffer: " + i10 + ", " + i11 + ". " + imageFormat);
        int[] iArr = new int[4];
        if (rect != null) {
            iArr[0] = rect.left;
            iArr[1] = rect.top;
            iArr[2] = rect.right;
            iArr[3] = rect.bottom;
        }
        try {
            return transErrorCode(setData(FrameUnit.yuv2RGB2(i10, i11, iArr, byteBuffer, byteBuffer2, byteBuffer3, i12, i13, 1), i10, i11, ImageFormat.RGB, DEFAULT_INPUT_TAG)).value();
        } catch (Throwable th) {
            AILog.e(TAG, "setTargetImage trans err: " + th.getMessage());
            return transErrorCode(-3).value();
        }
    }

    public int setTargetImage(int i10, int i11, ImageFormat imageFormat, Rect rect, byte[] bArr, byte[] bArr2, byte[] bArr3, int i12, int i13) {
        if (imageFormat != ImageFormat.YUV_420_888) {
            AILog.e(TAG, "setTargetImage format " + imageFormat + "not support");
            ErrorCode errorCode = ErrorCode.kErrorInvalidParam;
            setError(errorCode);
            return errorCode.value();
        }
        cleanExistFrameUnit();
        AILog.d(TAG, "setTargetImage with byte[]: " + i10 + ", " + i11 + ". " + imageFormat);
        int[] iArr = new int[4];
        if (rect != null) {
            iArr[0] = rect.left;
            iArr[1] = rect.top;
            iArr[2] = rect.right;
            iArr[3] = rect.bottom;
        }
        try {
            return transErrorCode(setData(FrameUnit.yuv2RGB(i10, i11, iArr, bArr, bArr2, bArr3, i12, i13, 1), i10, i11, ImageFormat.RGB, DEFAULT_INPUT_TAG)).value();
        } catch (Throwable th) {
            AILog.e(TAG, "setTargetImage trans err: " + th.getMessage());
            return transErrorCode(-3).value();
        }
    }
}
