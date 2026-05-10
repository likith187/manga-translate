package com.oplus.vfxsdk.naive.coe.engine;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.view.Surface;
import androidx.annotation.Keep;
import com.oplus.vfxsdk.naive.coe.api.ITask;
import com.oplus.vfxsdk.naive.coe.api.TaskOptions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class NativeEngine extends NativeObject {
    private static final String TAG = "VFX:NativeEngine";
    final ArrayList<NativeObject> mRetainedObjects;
    final b mScene;

    public NativeEngine(int i10) {
        super(0L);
        this.mRetainedObjects = new ArrayList<>();
        this.mScene = new b();
        synchronized (this.mLock) {
            this.mNativeHandle = nativeCreate(i10);
            this.mEngine = this;
        }
    }

    @Deprecated
    public static void enableRenderObject(long j10, RenderPass renderPass, boolean z10) {
        nativeEnableRenderObject(j10, renderPass, z10);
    }

    @Deprecated
    public static long[] getRenderObjects(long j10, String str) {
        return nativeGetRenderObjects(j10, str);
    }

    private static native void nativeAddCallback(long j10, NativeCallback nativeCallback);

    private static native void nativeAddPass(long j10, Material material, Pass pass);

    private static native void nativeAttachAssetManager(long j10, AssetManager assetManager);

    private static native void nativeAttachClassLoader(long j10, ClassLoader classLoader);

    private static native boolean nativeBind(long j10, boolean z10);

    private static native long nativeCreate(int i10);

    private static native long nativeCreateEffect(long j10, String str);

    private static native long nativeCreateEmitter(long j10, String str);

    private static native long nativeCreateMaterial(long j10);

    private static native long nativeCreateMesh(long j10, ByteBuffer byteBuffer);

    private static native long nativeCreatePass(long j10, String str, String str2, boolean z10, int i10, RenderStateInfo renderStateInfo);

    private static native long nativeCreatePostProcessor(long j10);

    private static native long nativeCreateRenderObject(long j10, String str, String str2, int i10, boolean z10, ByteBuffer byteBuffer, int i11, int i12);

    private static native long nativeCreateRenderTexture(long j10, TexCreateInfo[] texCreateInfoArr);

    private static native long nativeCreateRenderer(long j10, int i10, boolean z10);

    private static native long nativeCreateTexture1(long j10, TexCreateInfo texCreateInfo);

    private static native long nativeCreateTransform(long j10, float[] fArr);

    private static native long nativeCreateWindowSurface(long j10, Surface surface);

    private static native void nativeDestroyEngine(long j10);

    private static native void nativeEnableBlend(long j10, RenderPass renderPass, boolean z10, int i10, int i11);

    private static native void nativeEnableRenderObject(long j10, RenderPass renderPass, boolean z10);

    private static native long[] nativeGetRenderObjects(long j10, String str);

    private static native void nativeInitEngine(long j10, String[] strArr);

    private static native void nativeOnAnimEnd(long j10, int i10, String str);

    private static native void nativeOnAnimStart(long j10, int i10, String str);

    private static native void nativePostDraw(long j10);

    private static native void nativePostTask(long j10, ITask iTask, TaskOptions taskOptions);

    private static native void nativeProcessFrame(long j10, double d10);

    private static native void nativeReleaseObject(long j10, long j11);

    private static native void nativeRemoveCallbacks(long j10);

    private static native void nativeResetScene(long j10);

    private static native void nativeSendMessage(long j10, Message message);

    private static native void nativeSetAnimListenedList(long j10, String[] strArr);

    private static native void nativeSetBitmap(long j10, Bitmap bitmap, String str);

    private static native long nativeSetCOEEngineLocked(long j10);

    private static native void nativeSetCOEEngineUnlocked(long j10, long j11);

    private static native void nativeSetFPS(long j10, int i10);

    private static native void nativeSetMaterial(long j10, NativeRenderer nativeRenderer, Material material);

    private static native void nativeSetMesh(long j10, NativeRenderer nativeRenderer, Mesh mesh);

    private static native void nativeSetProperty(long j10, Material material, int i10, String str, Object[] objArr);

    private static native void nativeSetRenderTexture(long j10, Pass pass, RenderTexture renderTexture);

    private static native void nativeSetRenderThreadName(long j10, String str);

    private static native void nativeSetRotateMode(long j10, int i10);

    private static native void nativeSetSceneOutputRtSize(long j10, int i10, int i11);

    private static native void nativeSetScreenSize(long j10, int i10, int i11);

    private static native void nativeSetSortingOrder(long j10, RenderPass renderPass, int i10, int i11);

    private static native void nativeSetSurface(long j10, Surface surface);

    private static native void nativeSetViewport(long j10, int i10, int i11);

    private static native void nativeStartEngine(long j10);

    private static native void nativeStopEngine(long j10);

    private static native void nativeTouchEvent(long j10, int i10, float f10, float f11);

    private static native boolean nativeUnbind(long j10);

    public void addCallback(NativeCallback nativeCallback) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeAddCallback(j10, nativeCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addPass(Material material, Pass pass) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeAddPass(j10, material, pass);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void attachAssetManager(AssetManager assetManager) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeAttachAssetManager(j10, assetManager);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void attachClassLoader(ClassLoader classLoader) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeAttachClassLoader(j10, classLoader);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean bind(boolean z10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return false;
                }
                return nativeBind(j10, z10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void bindScene() {
        synchronized (this.mLock) {
            this.mScene.b();
        }
    }

    public long createMaterial() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateMaterial(j10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createMesh(ByteBuffer byteBuffer) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateMesh(j10, byteBuffer);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createParticleEffect(String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateEffect(j10, str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createParticleEmitter(String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateEmitter(j10, str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createPass(String str, String str2, boolean z10, int i10, RenderStateInfo renderStateInfo) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreatePass(j10, str, str2, z10, i10, renderStateInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createPostProcessor() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreatePostProcessor(j10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public long createRenderObject(String str, String str2, int i10, boolean z10, ByteBuffer byteBuffer, int i11, int i12) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateRenderObject(j10, str, str2, i10, z10, byteBuffer, i11, i12);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createRenderTexture(TexCreateInfo[] texCreateInfoArr) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateRenderTexture(j10, texCreateInfoArr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createRenderer(int i10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateRenderer(j10, i10, false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createSurfaceRenderTexture(Surface surface) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateWindowSurface(j10, surface);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createTexture1(TexCreateInfo texCreateInfo) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateTexture1(j10, texCreateInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createTransform() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateTransform(j10, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void destroyEngine() {
        this.mScene.d();
        releaseNativeObjects();
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeDestroyEngine(j10);
                    this.mNativeHandle = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void initEngine(String[] strArr) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeInitEngine(j10, strArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isSceneInBinding() {
        boolean zC;
        synchronized (this.mLock) {
            zC = this.mScene.c();
        }
        return zC;
    }

    @SafeVarargs
    public final <T> void javaSetProperty(Material material, int i10, String str, T... tArr) {
        setProperty(material, i10, str, tArr);
    }

    public void onAnimEnd(int i10, String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeOnAnimEnd(j10, i10, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onAnimStart(int i10, String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeOnAnimStart(j10, i10, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void postDraw() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativePostDraw(j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void postTask(ITask iTask, TaskOptions taskOptions) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && iTask != null) {
                    nativePostTask(j10, iTask, taskOptions);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void processFrame(double d10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeProcessFrame(j10, d10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void releaseNativeObjects() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                long jNativeSetCOEEngineLocked = nativeSetCOEEngineLocked(j10);
                Iterator<NativeObject> it = this.mRetainedObjects.iterator();
                while (it.hasNext()) {
                    it.next().release();
                }
                nativeSetCOEEngineUnlocked(this.mNativeHandle, jNativeSetCOEEngineLocked);
                this.mRetainedObjects.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void releaseObject(long j10) {
        synchronized (this.mLock) {
            try {
                long j11 = this.mNativeHandle;
                if (j11 != 0 && j10 != 0) {
                    nativeReleaseObject(j11, j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeCallbacks() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeRemoveCallbacks(j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void resetScene() {
        synchronized (this.mLock) {
            try {
                this.mScene.d();
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeResetScene(j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendMessage(Message message) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSendMessage(j10, message);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setAnimListenedList(String[] strArr) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetAnimListenedList(j10, strArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setBitmap(Bitmap bitmap, String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetBitmap(j10, bitmap, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFPS(int i10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetFPS(j10, i10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setMaterial(NativeRenderer nativeRenderer, Material material) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetMaterial(j10, nativeRenderer, material);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setMesh(NativeRenderer nativeRenderer, Mesh mesh) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetMesh(j10, nativeRenderer, mesh);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setNativeObjectLocked(NativeObject nativeObject) {
        synchronized (this.mLock) {
            try {
                if (this.mScene.c()) {
                    this.mScene.a(nativeObject);
                } else {
                    this.mRetainedObjects.add(nativeObject);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setProperty(Material material, int i10, String str, Object[] objArr) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetProperty(j10, material, i10, str, objArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRenderTexture(Pass pass, RenderTexture renderTexture) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetRenderTexture(j10, pass, renderTexture);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRenderThreadName(String str) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetRenderThreadName(j10, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRotateMode(int i10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetRotateMode(j10, i10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setSceneOutputRtSize(int i10, int i11) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetSceneOutputRtSize(j10, i10, i11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setScreenSize(int i10, int i11) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetScreenSize(j10, i10, i11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setSurface(Surface surface) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetSurface(j10, surface);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setViewport(int i10, int i11) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetViewport(j10, i10, i11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void startEngine() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeStartEngine(j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void stopEngine() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeStopEngine(j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void touchEvent(int i10, float f10, float f11) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeTouchEvent(j10, i10, f10, f11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean unbind() {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return false;
                }
                return nativeUnbind(j10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unbindScene() {
        synchronized (this.mLock) {
            this.mScene.e();
        }
    }

    public void initEngine() {
        initEngine(new String[0]);
    }

    public boolean bind() {
        return bind(true);
    }

    @Deprecated
    public long createRenderObject(String str, String str2, int i10, boolean z10, ByteBuffer byteBuffer) {
        return createRenderObject(str, str2, i10, z10, byteBuffer, 0, 0);
    }

    public long createRenderTexture(int i10, int i11) {
        TexCreateInfo[] texCreateInfoArr = {new TexCreateInfo()};
        texCreateInfoArr[0].setWidth(i10);
        texCreateInfoArr[0].setHeight(i11);
        return createRenderTexture(texCreateInfoArr);
    }

    public long createRenderer(int i10, boolean z10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateRenderer(j10, i10, z10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long createTransform(float[] fArr) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return 0L;
                }
                return nativeCreateTransform(j10, fArr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public long createRenderObject(String str, String str2, int i10, boolean z10) {
        return createRenderObject(str, str2, i10, z10, null, 0, 0);
    }

    public NativeEngine() {
        super(0L);
        this.mRetainedObjects = new ArrayList<>();
        this.mScene = new b();
        synchronized (this.mLock) {
            this.mNativeHandle = nativeCreate(0);
            this.mEngine = this;
        }
    }

    @Deprecated
    public long createRenderObject(String str, String str2) {
        return createRenderObject(str, str2, 0, false, null, 0, 0);
    }
}
