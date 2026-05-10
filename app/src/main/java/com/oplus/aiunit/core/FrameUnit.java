package com.oplus.aiunit.core;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SharedMemory;
import android.system.ErrnoException;
import android.system.OsConstants;
import com.oplus.aiunit.core.data.IBitmap;
import com.oplus.aiunit.core.protocol.common.FrameTag;
import com.oplus.aiunit.core.protocol.common.ImageFormat;
import com.oplus.aiunit.core.utils.AILog;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class FrameUnit implements Parcelable {
    public static final Parcelable.Creator<FrameUnit> CREATOR = new Parcelable.Creator<FrameUnit>() { // from class: com.oplus.aiunit.core.FrameUnit.2
        @Override // android.os.Parcelable.Creator
        public FrameUnit createFromParcel(Parcel parcel) {
            return new FrameUnit(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FrameUnit[] newArray(int i10) {
            return new FrameUnit[i10];
        }
    };
    public static final int FLAG_AUTO_CLEAN = 1;
    public static final int FLAG_FRAGMENT = 2;
    public static final int FLAG_FRAGMENT_PARENT = 4;
    private static final int FLAG_READ_BUFFER_FROM_BITMAP = 8;
    private static final String TAG = "FrameUnit";
    private IBinder mBitmap;
    private ByteBuffer mByteBuffer;
    private int mChannel;
    private int mFlag;
    private int mHeight;
    private int mImageFormat;
    private SharedMemory mSharedMemory;
    private String mStrUuid;
    private String mTag;
    private int mWidth;
    private Bitmap originBitmap;

    /* JADX INFO: renamed from: com.oplus.aiunit.core.FrameUnit$1 */
    public class AnonymousClass1 extends IBitmap.Stub {
        public AnonymousClass1() {
        }

        @Override // com.oplus.aiunit.core.data.IBitmap
        public Bitmap getBitmap() {
            return FrameUnit.this.originBitmap;
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.FrameUnit$2 */
    public class AnonymousClass2 implements Parcelable.Creator<FrameUnit> {
        @Override // android.os.Parcelable.Creator
        public FrameUnit createFromParcel(Parcel parcel) {
            return new FrameUnit(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FrameUnit[] newArray(int i10) {
            return new FrameUnit[i10];
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.FrameUnit$3 */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat;

        static {
            int[] iArr = new int[ImageFormat.values().length];
            $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat = iArr;
            try {
                iArr[ImageFormat.YUV_NV12.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_NV21.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_YU12.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_NV12_10B.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_NV21_10B.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_YU12_10B.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.GRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.RGB565.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.BGR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.RGB.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.BGR_10B.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.RGB_10B.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.YUV_444.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.RGBA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.RGBA_10B.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.HARDWARE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.IGNORED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    static {
        try {
            System.loadLibrary("aiunit_sdk_core");
        } catch (Throwable th) {
            AILog.e(TAG, "FrameUnit load err. " + th.getMessage());
        }
    }

    public FrameUnit(FrameUnit frameUnit, Bitmap bitmap) {
        this.mWidth = -1;
        this.mHeight = -1;
        this.mChannel = -1;
        this.mImageFormat = ImageFormat.IGNORED.value();
        this.mBitmap = null;
        this.originBitmap = null;
        this.mSharedMemory = null;
        this.mFlag = 0;
        this.mTag = "";
        this.mStrUuid = frameUnit.getUUID();
        setFlag(2);
        frameUnit.setFlag(4);
        this.mByteBuffer = ByteBuffer.allocateDirect(bitmap.getByteCount());
        receiveBitmap(bitmap);
    }

    private ImageFormat transform(Bitmap.Config config) {
        return config == Bitmap.Config.ARGB_8888 ? ImageFormat.RGBA : config == Bitmap.Config.RGB_565 ? ImageFormat.RGB565 : config == Bitmap.Config.HARDWARE ? ImageFormat.HARDWARE : config == Bitmap.Config.ALPHA_8 ? ImageFormat.GRAY : ImageFormat.RGBA;
    }

    public static native byte[] yuv2RGB(int i10, int i11, int[] iArr, byte[] bArr, byte[] bArr2, byte[] bArr3, int i12, int i13, int i14);

    public static native byte[] yuv2RGB2(int i10, int i11, int[] iArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i12, int i13, int i14);

    public void cleanFlag() {
        this.mFlag = 0;
    }

    public void clear(Boolean bool) {
        Bitmap bitmap;
        AILog.d(TAG, "clear recycle = " + bool + ", binder = " + this.mBitmap);
        if (bool.booleanValue() && (bitmap = this.originBitmap) != null) {
            bitmap.recycle();
        }
        this.originBitmap = null;
        this.mBitmap = null;
    }

    public void close() {
        SharedMemory sharedMemory = this.mSharedMemory;
        if (sharedMemory != null) {
            sharedMemory.close();
        }
    }

    public void closeBuffer() {
        ByteBuffer byteBuffer;
        if (isFragment() || (byteBuffer = this.mByteBuffer) == null) {
            return;
        }
        SharedMemory.unmap(byteBuffer);
        this.mByteBuffer = null;
    }

    public Bitmap createBitmap() {
        int i10 = AnonymousClass3.$SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[ImageFormat.find(getImageFormat()).ordinal()];
        if (i10 == 7) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ALPHA_8);
            ByteBuffer byteBufferOpenBuffer = openBuffer();
            if (byteBufferOpenBuffer == null) {
                return null;
            }
            bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferOpenBuffer);
            closeBuffer();
            return bitmapCreateBitmap;
        }
        if (i10 != 10) {
            if (i10 != 14) {
                AILog.e(TAG, "invalid image format in createBitmap: " + getImageFormat());
                return null;
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            ByteBuffer byteBufferOpenBuffer2 = openBuffer();
            if (byteBufferOpenBuffer2 == null) {
                return null;
            }
            bitmapCreateBitmap2.copyPixelsFromBuffer(byteBufferOpenBuffer2);
            closeBuffer();
            return bitmapCreateBitmap2;
        }
        Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        ByteBuffer byteBufferOpenBuffer3 = openBuffer();
        if (byteBufferOpenBuffer3 == null) {
            return null;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(((getChannel() * (getHeight() * getWidth())) / 3) * 4);
        for (int i11 = 0; i11 < byteBufferAllocateDirect.capacity(); i11++) {
            if (i11 % 4 != 3) {
                byteBufferAllocateDirect.put(byteBufferOpenBuffer3.get());
            } else {
                byteBufferAllocateDirect.put((byte) -1);
            }
        }
        byteBufferAllocateDirect.rewind();
        bitmapCreateBitmap3.copyPixelsFromBuffer(byteBufferAllocateDirect);
        closeBuffer();
        return bitmapCreateBitmap3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bitmap getBinderBitmap() {
        return this.originBitmap;
    }

    public IBinder getBitmap() {
        return this.mBitmap;
    }

    public int getBufferSize() {
        ByteBuffer byteBuffer;
        if (isFragment() && (byteBuffer = this.mByteBuffer) != null) {
            return byteBuffer.capacity();
        }
        SharedMemory sharedMemory = this.mSharedMemory;
        if (sharedMemory == null) {
            AILog.e(TAG, "shared memory is null buffer size get failed.");
            return 0;
        }
        try {
            return sharedMemory.getSize();
        } catch (IllegalStateException e10) {
            AILog.e(TAG, "getBufferSize failed. " + e10.getMessage());
            return 0;
        }
    }

    public int getChannel() {
        return this.mChannel;
    }

    public byte[] getData() {
        AILog.i(TAG, "getData");
        byte[] bArr = new byte[getFrameSize()];
        ByteBuffer byteBufferOpenBuffer = openBuffer();
        if (byteBufferOpenBuffer == null) {
            return null;
        }
        byteBufferOpenBuffer.rewind();
        byteBufferOpenBuffer.get(bArr);
        closeBuffer();
        return bArr;
    }

    public double[] getDataDoubleArray() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        double[] dArr = new double[this.mWidth * this.mHeight];
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataDoubleArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            dArr[i10] = byteBufferOpenBuffer.getDouble(i10 * 8);
        }
        closeBuffer();
        return dArr;
    }

    public double[][] getDataDoubleArray2D() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mWidth, this.mHeight);
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataIntArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.mHeight;
                if (i11 < i12) {
                    dArr[i10][i11] = byteBufferOpenBuffer.getDouble(((i12 * i10) + i11) * 8);
                    i11++;
                }
            }
        }
        closeBuffer();
        return dArr;
    }

    public float[] getDataFloatArray() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        float[] fArr = new float[this.mWidth * this.mHeight];
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataFloatArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            fArr[i10] = byteBufferOpenBuffer.getFloat(i10 * 4);
        }
        closeBuffer();
        return fArr;
    }

    public float[][] getDataFloatArray2D() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, this.mWidth, this.mHeight);
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataIntArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.mHeight;
                if (i11 < i12) {
                    fArr[i10][i11] = byteBufferOpenBuffer.getFloat(((i12 * i10) + i11) * 4);
                    i11++;
                }
            }
        }
        closeBuffer();
        return fArr;
    }

    public int[] getDataIntArray() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        int[] iArr = new int[this.mWidth * this.mHeight];
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataIntArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            iArr[i10] = byteBufferOpenBuffer.getInt(i10 * 4);
        }
        closeBuffer();
        return iArr;
    }

    public int[][] getDataIntArray2D() {
        ByteBuffer byteBufferOpenBuffer = openBuffer(getFrameSize());
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.mWidth, this.mHeight);
        if (byteBufferOpenBuffer == null) {
            AILog.e(TAG, "getSpecialDataIntArray null");
            return null;
        }
        for (int i10 = 0; i10 < this.mWidth; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.mHeight;
                if (i11 < i12) {
                    iArr[i10][i11] = byteBufferOpenBuffer.getInt(((i12 * i10) + i11) * 4);
                    i11++;
                }
            }
        }
        closeBuffer();
        return iArr;
    }

    public int getFlag() {
        return this.mFlag;
    }

    public int getFrameSize() {
        return this.mWidth * this.mHeight * this.mChannel;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getImageFormat() {
        return this.mImageFormat;
    }

    public native byte getNativeByte(int i10);

    public native double getNativeDouble(int i10);

    public native float getNativeFloat(int i10);

    public native int getNativeInt(int i10);

    public native long getNativeLong(int i10);

    public SharedMemory getSharedMemory() {
        return this.mSharedMemory;
    }

    public String getTag() {
        return this.mTag;
    }

    public String getUUID() {
        return this.mStrUuid;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean is10BitFormat() {
        return this.mImageFormat >= ImageFormat.YUV_NV21_10B.value() && this.mImageFormat < ImageFormat.END.value();
    }

    public boolean isAutoClean() {
        return (this.mFlag & 1) != 0;
    }

    public boolean isFragment() {
        return (this.mFlag & 2) != 0;
    }

    public boolean isFragmentParent() {
        return (this.mFlag & 4) != 0;
    }

    public boolean isReadFromBitmap() {
        return (this.mFlag & 8) != 0;
    }

    public boolean match(int i10, int i11, int i12) {
        return i10 == this.mWidth && i11 == this.mHeight && i12 == this.mChannel;
    }

    public void move(FrameUnit frameUnit) {
        if (!this.mStrUuid.equals(frameUnit.mStrUuid)) {
            AILog.e(TAG, "move uuid not match!");
            return;
        }
        this.mWidth = frameUnit.mWidth;
        this.mHeight = frameUnit.mHeight;
        this.mChannel = frameUnit.mChannel;
        this.mImageFormat = frameUnit.mImageFormat;
    }

    public ByteBuffer openBuffer(int i10) {
        ByteBuffer byteBuffer = this.mByteBuffer;
        if (byteBuffer != null) {
            return byteBuffer;
        }
        SharedMemory sharedMemory = this.mSharedMemory;
        if (sharedMemory != null) {
            try {
                sharedMemory.setProtect(OsConstants.PROT_READ | OsConstants.PROT_WRITE);
                this.mByteBuffer = this.mSharedMemory.mapReadWrite();
            } catch (ErrnoException | IllegalStateException e10) {
                AILog.e(TAG, "set protect or map read write failed." + e10.getMessage());
            }
        } else {
            AILog.w(TAG, "shared memory is empty");
        }
        try {
            if (this.mByteBuffer == null) {
                this.mByteBuffer = ByteBuffer.allocate(i10);
            }
        } catch (Throwable th) {
            AILog.e(TAG, "openBuffer from bitmap failed! " + th);
        }
        AILog.d(TAG, "openBuffer mByteBuffer = " + this.mByteBuffer);
        return this.mByteBuffer;
    }

    public void readFromParcel(Parcel parcel) {
        this.mStrUuid = parcel.readString();
        this.mWidth = parcel.readInt();
        this.mHeight = parcel.readInt();
        this.mChannel = parcel.readInt();
        this.mImageFormat = parcel.readInt();
        IBinder strongBinder = parcel.readStrongBinder();
        this.mBitmap = strongBinder;
        if (strongBinder != null) {
            try {
                Bitmap bitmap = IBitmap.Stub.asInterface(strongBinder).getBitmap();
                this.originBitmap = bitmap;
                if (bitmap == null || this.mImageFormat != ImageFormat.HARDWARE.value()) {
                    return;
                }
                setFlag(8);
                this.mImageFormat = ImageFormat.RGBA.value();
            } catch (Throwable th) {
                AILog.w(TAG, "readFromParcel getBitmap err. " + th);
            }
        }
    }

    public void receiveBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            AILog.e(TAG, "receiveBitmap, bitmap status error");
            return;
        }
        int bufferSize = getBufferSize();
        int byteCount = bitmap.getByteCount();
        if (bufferSize < byteCount) {
            AILog.e(TAG, "bitmap size " + byteCount + ", more than 67108864 bytes (64MB) not supported. ");
            return;
        }
        setWidth(bitmap.getWidth());
        setHeight(bitmap.getHeight());
        ByteBuffer byteBufferOpenBuffer = openBuffer();
        setImageFormatDirectly(transform(bitmap.getConfig()));
        if (byteBufferOpenBuffer != null) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                bitmap.copyPixelsToBuffer(byteBufferOpenBuffer);
            }
            closeBuffer();
        }
    }

    public void restoreFrameUnit(FrameUnit frameUnit) {
        setSharedMemory(frameUnit.getSharedMemory());
        setFlag(frameUnit.getFlag());
        setTag(frameUnit.getTag());
    }

    public void setBinderBitmap(Bitmap bitmap) {
        this.originBitmap = bitmap;
        setBitmap(new IBitmap.Stub() { // from class: com.oplus.aiunit.core.FrameUnit.1
            public AnonymousClass1() {
            }

            @Override // com.oplus.aiunit.core.data.IBitmap
            public Bitmap getBitmap() {
                return FrameUnit.this.originBitmap;
            }
        });
    }

    public void setBitmap(IBinder iBinder) {
        this.mBitmap = iBinder;
    }

    public void setChannel(int i10) {
        this.mChannel = i10;
    }

    public void setData(byte[] bArr) {
        setData(bArr, 0);
    }

    public void setFlag(int i10) {
        this.mFlag = i10 | this.mFlag;
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
    }

    public void setImageFormat(int i10) {
        setImageFormatDirectly(ImageFormat.find(i10));
    }

    public void setImageFormatDirectly(ImageFormat imageFormat) {
        switch (AnonymousClass3.$SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat[imageFormat.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                this.mChannel = 1;
                break;
            case 8:
                this.mChannel = 2;
                break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                this.mChannel = 3;
                break;
            case 14:
            case 15:
            case 16:
                this.mChannel = 4;
                break;
        }
        this.mImageFormat = imageFormat.value();
    }

    public native void setNativeByteArray(byte[] bArr, int i10);

    public native void setNativeDoubleArray(double[] dArr, int i10);

    public native void setNativeFloatArray(float[] fArr, int i10);

    public native void setNativeIntArray(int[] iArr, int i10);

    public native void setNativeLongArray(long[] jArr, int i10);

    public void setSharedMemory(SharedMemory sharedMemory) {
        this.mSharedMemory = sharedMemory;
    }

    public void setSpecialDataDoubleArray(double[] dArr) {
        if (dArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(dArr.length * 8);
        if (byteBufferOpenBuffer != null) {
            for (int i10 = 0; i10 < dArr.length; i10++) {
                byteBufferOpenBuffer.putDouble(i10 * 8, dArr[i10]);
            }
            closeBuffer();
        }
    }

    public void setSpecialDataDoubleArray2D(double[][] dArr) {
        if (dArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBuffer = this.mByteBuffer;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(this.mWidth * this.mHeight * 8);
        if (byteBufferOpenBuffer != null) {
            for (double[] dArr2 : dArr) {
                for (double d10 : dArr2) {
                    byteBufferOpenBuffer.putDouble(d10);
                }
            }
            closeBuffer();
        }
    }

    public void setSpecialDataFloatArray(float[] fArr) {
        if (fArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(fArr.length * 4);
        if (byteBufferOpenBuffer != null) {
            for (int i10 = 0; i10 < fArr.length; i10++) {
                byteBufferOpenBuffer.putFloat(i10 * 4, fArr[i10]);
            }
            closeBuffer();
        }
    }

    public void setSpecialDataFloatArray2D(float[][] fArr) {
        if (fArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(this.mWidth * this.mHeight * 4);
        if (byteBufferOpenBuffer != null) {
            for (float[] fArr2 : fArr) {
                for (float f10 : fArr2) {
                    byteBufferOpenBuffer.putFloat(f10);
                }
            }
            closeBuffer();
        }
    }

    public void setSpecialDataIntArray(int[] iArr) {
        if (iArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(iArr.length * 4);
        if (byteBufferOpenBuffer != null) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                byteBufferOpenBuffer.putInt(i10 * 4, iArr[i10]);
            }
            closeBuffer();
        }
    }

    public void setSpecialDataIntArray2D(int[][] iArr) {
        if (iArr == null) {
            AILog.e(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer(this.mWidth * this.mHeight * 4);
        if (byteBufferOpenBuffer != null) {
            for (int[] iArr2 : iArr) {
                for (int i10 : iArr2) {
                    byteBufferOpenBuffer.putInt(i10);
                }
            }
            closeBuffer();
        }
    }

    public void setTag(String str) {
        this.mTag = str;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.mStrUuid);
        parcel.writeInt(this.mWidth);
        parcel.writeInt(this.mHeight);
        parcel.writeInt(this.mChannel);
        parcel.writeInt(this.mImageFormat);
        parcel.writeStrongBinder(this.mBitmap);
    }

    public void setData(byte[] bArr, int i10) {
        if (bArr == null) {
            AILog.d(TAG, "data is null.");
            return;
        }
        ByteBuffer byteBufferOpenBuffer = openBuffer();
        if (byteBufferOpenBuffer != null) {
            byteBufferOpenBuffer.position(i10);
            byteBufferOpenBuffer.put(bArr);
            closeBuffer();
        }
    }

    public ByteBuffer openBuffer() {
        ByteBuffer byteBuffer;
        if (isFragment() && (byteBuffer = this.mByteBuffer) != null) {
            return byteBuffer;
        }
        ByteBuffer byteBuffer2 = this.mByteBuffer;
        if (byteBuffer2 != null) {
            return byteBuffer2;
        }
        SharedMemory sharedMemory = this.mSharedMemory;
        if (sharedMemory != null) {
            try {
                sharedMemory.setProtect(OsConstants.PROT_READ | OsConstants.PROT_WRITE);
                this.mByteBuffer = this.mSharedMemory.mapReadWrite();
            } catch (ErrnoException | IllegalStateException e10) {
                AILog.e(TAG, "set protect or map read write failed." + e10.getMessage());
            }
        } else {
            AILog.w(TAG, "shared memory is empty");
        }
        try {
            Bitmap bitmap = this.originBitmap;
            if (isReadFromBitmap() && bitmap != null) {
                if (!bitmap.isRecycled() && bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                    ByteBuffer byteBuffer3 = this.mByteBuffer;
                    if (byteBuffer3 == null) {
                        this.mByteBuffer = ByteBuffer.allocate(bitmap.getByteCount());
                    } else {
                        byteBuffer3.clear();
                    }
                    bitmap.copyPixelsToBuffer(this.mByteBuffer);
                    AILog.i(TAG, "openBuffer from bitmap " + bitmap.getByteCount());
                    return this.mByteBuffer;
                }
                AILog.w(TAG, "openBuffer from bitmap invalid! ");
            }
        } catch (Throwable th) {
            AILog.e(TAG, "openBuffer from bitmap failed! " + th);
        }
        AILog.d(TAG, "openBuffer mByteBuffer = " + this.mByteBuffer);
        return this.mByteBuffer;
    }

    public FrameUnit(FrameUnit frameUnit, FrameTag.FrameFragment frameFragment) {
        this.mWidth = -1;
        this.mHeight = -1;
        this.mChannel = -1;
        this.mImageFormat = ImageFormat.IGNORED.value();
        this.mBitmap = null;
        this.originBitmap = null;
        this.mSharedMemory = null;
        this.mFlag = 0;
        this.mTag = "";
        this.mStrUuid = frameUnit.mStrUuid;
        this.mFlag = frameUnit.mFlag;
        this.mWidth = frameFragment.getWidth().intValue();
        this.mHeight = frameFragment.getHeight().intValue();
        this.mChannel = frameFragment.getChannel().intValue();
        this.mImageFormat = frameFragment.getImageFormat().intValue();
        this.mTag = frameFragment.getTag();
        int i10 = this.mWidth * this.mHeight * this.mChannel;
        byte[] bArr = new byte[i10];
        ByteBuffer byteBufferOpenBuffer = frameUnit.openBuffer();
        if (byteBufferOpenBuffer != null) {
            AILog.d(TAG, "limit is " + byteBufferOpenBuffer.limit() + " pos is " + byteBufferOpenBuffer.position() + " start is " + frameFragment.getStart() + "format is " + frameFragment.getImageFormat() + " buffer size is " + i10);
            byteBufferOpenBuffer.position((int) frameFragment.getStart());
            byteBufferOpenBuffer.get(bArr, 0, i10);
        }
        frameUnit.closeBuffer();
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i10);
        this.mByteBuffer = byteBufferAllocateDirect;
        byteBufferAllocateDirect.put(bArr, 0, i10);
        this.mByteBuffer.rewind();
        setFlag(2);
    }

    public FrameUnit(ShareMemoryHolder shareMemoryHolder) {
        this.mWidth = -1;
        this.mHeight = -1;
        this.mChannel = -1;
        this.mImageFormat = ImageFormat.IGNORED.value();
        this.mBitmap = null;
        this.originBitmap = null;
        this.mSharedMemory = null;
        this.mFlag = 0;
        this.mTag = "";
        this.mSharedMemory = shareMemoryHolder.getSharedMemory();
        this.mStrUuid = shareMemoryHolder.getUUID();
    }

    public FrameUnit(Bitmap bitmap, String str) {
        this.mWidth = -1;
        this.mHeight = -1;
        this.mChannel = -1;
        this.mImageFormat = ImageFormat.IGNORED.value();
        this.mBitmap = null;
        this.originBitmap = null;
        this.mSharedMemory = null;
        this.mFlag = 0;
        this.mTag = "";
        setTag(str);
        setFlag(1);
        setWidth(bitmap.getWidth());
        setHeight(bitmap.getHeight());
        setImageFormatDirectly(transform(bitmap.getConfig()));
        setBinderBitmap(bitmap);
    }

    public FrameUnit(Parcel parcel) {
        this.mWidth = -1;
        this.mHeight = -1;
        this.mChannel = -1;
        this.mImageFormat = ImageFormat.IGNORED.value();
        this.mBitmap = null;
        this.originBitmap = null;
        this.mSharedMemory = null;
        this.mFlag = 0;
        this.mTag = "";
        readFromParcel(parcel);
    }
}
