package com.oplus.aisubsystem.core.client;

import java.lang.reflect.Constructor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;
import w8.l;
import z5.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class AiSettings {
    public static final a Companion = new a(null);
    public static final long DEFAULT_MAXIMUM_MEMORY = 4096;
    public static final int DEFAULT_RUNNING_ID = -1;
    public static final long DEFAULT_SURVIVAL_LIFECYCLE = 60000;
    public static final int RUNNING_TYPE_CLOUD = 2;
    public static final int RUNNING_TYPE_LOCAL = 1;
    private static final String TAG = "AiSettings";
    private Boolean appForeground;
    private Integer runningId;
    private Long runningMaximumMemory;
    private Integer runningType;
    private Long survivalLifecycle;
    private Boolean userClick;

    public static final class a {
        private a() {
        }

        public final AiSettings a() {
            return new b().buildSettings(AiSettings.class);
        }

        public final AiSettings b(l block) {
            r.e(block, "block");
            b bVar = new b();
            block.invoke(bVar);
            return bVar.buildSettings(AiSettings.class);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static class b {
        private Boolean appForeground;
        private Integer runningId;
        private Long runningMaximumMemory;
        private Integer runningType;
        private Long survivalLifecycle;
        private Boolean userClick;

        public final <T extends AiSettings> T buildSettings(Class<T> clazz) {
            Object objM59constructorimpl;
            r.e(clazz, "clazz");
            try {
                r.a aVar = n8.r.Companion;
                Constructor<T> declaredConstructor = clazz.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                T tNewInstance = declaredConstructor.newInstance(null);
                T t10 = tNewInstance;
                t10.setRunningType(this.runningType);
                t10.setRunningId(this.runningId);
                t10.setSurvivalLifecycle(this.survivalLifecycle);
                t10.setRunningMaximumMemory(this.runningMaximumMemory);
                t10.setUserClick(this.userClick);
                t10.setAppForeground(this.appForeground);
                objM59constructorimpl = n8.r.m59constructorimpl(tNewInstance);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c.c(AiSettings.TAG, "Error creating instance of ".concat(clazz.getName()), thM62exceptionOrNullimpl);
            }
            s.b(objM59constructorimpl);
            kotlin.jvm.internal.r.d(objM59constructorimpl, "getOrThrow(...)");
            return (T) objM59constructorimpl;
        }

        public final Boolean getAppForeground() {
            return this.appForeground;
        }

        public final Integer getRunningId() {
            return this.runningId;
        }

        public final Long getRunningMaximumMemory() {
            return this.runningMaximumMemory;
        }

        public final Integer getRunningType() {
            return this.runningType;
        }

        public final Long getSurvivalLifecycle() {
            return this.survivalLifecycle;
        }

        public final Boolean getUserClick() {
            return this.userClick;
        }

        public final b setAppForeground(boolean z10) {
            this.appForeground = Boolean.valueOf(z10);
            return this;
        }

        public final b setRunningId(int i10) {
            this.runningId = Integer.valueOf(i10);
            return this;
        }

        public final b setRunningMaximumMemory(long j10) {
            this.runningMaximumMemory = Long.valueOf(j10);
            return this;
        }

        public final b setRunningType(int i10) {
            this.runningType = Integer.valueOf(i10);
            return this;
        }

        public final b setSurvivalLifecycle(long j10) {
            this.survivalLifecycle = Long.valueOf(j10);
            return this;
        }

        public final b setUserClick(boolean z10) {
            this.userClick = Boolean.valueOf(z10);
            return this;
        }

        public final void setAppForeground(Boolean bool) {
            this.appForeground = bool;
        }

        public final void setRunningId(Integer num) {
            this.runningId = num;
        }

        public final void setRunningMaximumMemory(Long l10) {
            this.runningMaximumMemory = l10;
        }

        public final void setRunningType(Integer num) {
            this.runningType = num;
        }

        public final void setSurvivalLifecycle(Long l10) {
            this.survivalLifecycle = l10;
        }

        public final void setUserClick(Boolean bool) {
            this.userClick = bool;
        }
    }

    public static final AiSettings build() {
        return Companion.a();
    }

    public final Boolean getAppForeground() {
        return this.appForeground;
    }

    public final Integer getRunningId() {
        return this.runningId;
    }

    public final Long getRunningMaximumMemory() {
        return this.runningMaximumMemory;
    }

    public final Integer getRunningType() {
        return this.runningType;
    }

    public final Long getSurvivalLifecycle() {
        return this.survivalLifecycle;
    }

    public final Boolean getUserClick() {
        return this.userClick;
    }

    public final void setAppForeground(Boolean bool) {
        this.appForeground = bool;
    }

    public final void setRunningId(Integer num) {
        this.runningId = num;
    }

    public final void setRunningMaximumMemory(Long l10) {
        this.runningMaximumMemory = l10;
    }

    public final void setRunningType(Integer num) {
        this.runningType = num;
    }

    public final void setSurvivalLifecycle(Long l10) {
        this.survivalLifecycle = l10;
    }

    public final void setUserClick(Boolean bool) {
        this.userClick = bool;
    }

    public static final AiSettings build(l lVar) {
        return Companion.b(lVar);
    }
}
