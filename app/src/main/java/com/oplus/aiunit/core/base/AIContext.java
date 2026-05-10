package com.oplus.aiunit.core.base;

import android.os.Looper;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ShareMemoryHolder;
import com.oplus.aiunit.core.utils.AILog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AIContext {
    public static final String DEFAULT_USAGE = "3_0_0";
    private static final String TAG = "AIDetectorContext";
    private ConfigPackage mConfigPackage;
    private int[] mMemoryPool = null;

    public synchronized FramePackage applyFramePackage() {
        if (this.mConfigPackage == null) {
            AILog.e(TAG, "config package is null when applying package.");
            return null;
        }
        return new FramePackage(this.mConfigPackage.getUuid());
    }

    public synchronized FrameUnit applyFrameUnit(int i10) {
        ConfigPackage configPackage = this.mConfigPackage;
        if (configPackage == null) {
            AILog.w(TAG, "config package is null when applying frame unit");
            return null;
        }
        ShareMemoryHolder shareMemoryHolderApplyShareMemoryHolder = configPackage.applyShareMemoryHolder(i10);
        if (shareMemoryHolderApplyShareMemoryHolder == null) {
            AILog.e(TAG, "share memory holder apply failed.");
            return null;
        }
        return new FrameUnit(shareMemoryHolderApplyShareMemoryHolder);
    }

    public void checkMainThread() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            throw new RuntimeException("The call must be in a worker thread");
        }
    }

    public synchronized ConfigPackage createConfigPackage() {
        try {
            if (this.mConfigPackage != null) {
                AILog.d(TAG, "createConfigPackage destroy last");
                destroyConfigPackage();
            }
            ConfigPackage configPackage = new ConfigPackage();
            this.mConfigPackage = configPackage;
            configPackage.allocateShareMemoryByFlagList(getConfigMemoryPool());
        } catch (Throwable th) {
            throw th;
        }
        return this.mConfigPackage;
    }

    public synchronized String destroyConfigPackage() {
        AILog.d(TAG, "destroyConfigPackage");
        ConfigPackage configPackage = this.mConfigPackage;
        if (configPackage == null) {
            AILog.w(TAG, "config package is null when destroying package");
            return "";
        }
        configPackage.cleanSharedMemoryHolder();
        String uuid = this.mConfigPackage.getUuid();
        this.mConfigPackage = null;
        return uuid;
    }

    public synchronized void freeAllShareMemoryHolder() {
        ConfigPackage configPackage = this.mConfigPackage;
        if (configPackage == null) {
            AILog.e(TAG, "config package is null when free AllShareMemoryHolder");
        } else {
            configPackage.freeAllShareMemoryHolder();
        }
    }

    public synchronized void freeFrameUnit(FrameUnit frameUnit) {
        if (this.mConfigPackage == null) {
            AILog.e(TAG, "config package is null when free frame unit");
        } else if (frameUnit == null) {
            AILog.e(TAG, "frame unit is null when free frame unit");
        } else {
            frameUnit.clear(Boolean.FALSE);
            this.mConfigPackage.freeShareMemoryHolder(frameUnit.getUUID());
        }
    }

    public synchronized void freeShareMemoryHolder(String str) {
        ConfigPackage configPackage = this.mConfigPackage;
        if (configPackage == null) {
            AILog.e(TAG, "config package is null when free ShareMemoryHolder");
        } else {
            configPackage.freeShareMemoryHolder(str);
        }
    }

    public int[] getConfigMemoryPool() {
        int[] iArr = this.mMemoryPool;
        return iArr != null ? iArr : new int[]{1024, 1024, ConfigPackage.FRAME_SIZE_4, ConfigPackage.FRAME_SIZE_4};
    }

    public synchronized ConfigPackage getConfigPackage() {
        return this.mConfigPackage;
    }

    public abstract void process(FramePackage framePackage);

    public void setConfigMemoryPool(int[] iArr) {
        this.mMemoryPool = iArr;
    }
}
