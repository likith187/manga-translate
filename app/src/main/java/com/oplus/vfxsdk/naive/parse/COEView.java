package com.oplus.vfxsdk.naive.parse;

import android.content.Context;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import androidx.annotation.Keep;
import com.oplus.vfxsdk.common.COEData;
import com.oplus.vfxsdk.common.COEParse;
import com.oplus.vfxsdk.naive.coe.BaseTextureView;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import f8.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class COEView extends BaseTextureView implements TextureView.SurfaceTextureListener {
    public static final a Companion = new a(null);
    public static final String TAG = "COEView";
    private String fileName;
    private final Map<String, List<l>> notifiers;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COEView(Context context) {
        super(context);
        r.e(context, "context");
        this.notifiers = new LinkedHashMap();
    }

    public static /* synthetic */ COEView load$default(COEView cOEView, String str, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return cOEView.load(str, z10);
    }

    public static /* synthetic */ COEView loadAsync$default(COEView cOEView, String str, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadAsync");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return cOEView.loadAsync(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAsync$lambda$13$lambda$12(COEView this$0, String assetsFile, boolean z10) {
        r.e(this$0, "this$0");
        r.e(assetsFile, "$assetsFile");
        this$0.load(assetsFile, z10);
    }

    public static /* synthetic */ COEView loadFromStorageAsync$default(COEView cOEView, String str, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadFromStorageAsync");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return cOEView.loadFromStorageAsync(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadFromStorageAsync$lambda$11$lambda$10(String filePath, COEView this$0, boolean z10) {
        f8.c cVarB;
        r.e(filePath, "$filePath");
        r.e(this$0, "this$0");
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(filePath);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        this$0.load(new FileInputStream(file), kotlin.text.r.u(filePath, ".coz", false, 2, null), z10);
        String str = this$0.fileName;
        if (str == null || (cVarB = f8.e.f12039a.b(str)) == null) {
            return;
        }
        cVarB.h((int) jCurrentTimeMillis2);
        cVarB.l((int) (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public final String getFileName() {
        return this.fileName;
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public final COERenderer getRenderer() {
        CopyOnWriteArrayList<BaseRenderer> layers = getLayers();
        return (COERenderer) (layers != null ? (BaseRenderer) o.T(layers, 0) : null);
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public void initRenderer() {
    }

    public final COEView load(String assetsFile, boolean z10) {
        f8.c cVarB;
        r.e(assetsFile, "assetsFile");
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            InputStream inputStreamOpen = getContext().getAssets().open(assetsFile);
            try {
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                Log.i("COE_LOGGER", "COEView=>load assetFile:" + assetsFile);
                r.b(inputStreamOpen);
                load(inputStreamOpen, kotlin.text.r.u(assetsFile, ".coz", false, 2, null), z10);
                String str = this.fileName;
                if (str != null && (cVarB = f8.e.f12039a.b(str)) != null) {
                    cVarB.h((int) jCurrentTimeMillis2);
                    cVarB.l((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                }
                kotlin.io.c.a(inputStreamOpen, null);
            } finally {
            }
        }
        return this;
    }

    public final COEView loadAsync(final String assetsFile, final boolean z10) {
        r.e(assetsFile, "assetsFile");
        synchronized (this) {
            new Thread(new Runnable() { // from class: com.oplus.vfxsdk.naive.parse.h
                @Override // java.lang.Runnable
                public final void run() {
                    COEView.loadAsync$lambda$13$lambda$12(this.f11394a, assetsFile, z10);
                }
            }).start();
        }
        return this;
    }

    public final COEView loadFromStorageAsync(final String filePath, final boolean z10) {
        r.e(filePath, "filePath");
        synchronized (this) {
            new Thread(new Runnable() { // from class: com.oplus.vfxsdk.naive.parse.g
                @Override // java.lang.Runnable
                public final void run() {
                    COEView.loadFromStorageAsync$lambda$11$lambda$10(filePath, this, z10);
                }
            }).start();
        }
        return this;
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        CopyOnWriteArrayList<BaseRenderer> layers = getLayers();
        if (layers != null) {
            Iterator<T> it = layers.iterator();
            while (it.hasNext()) {
                ((BaseRenderer) it.next()).onSizeChanged(i10, i11, i12, i13);
            }
        }
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public static /* synthetic */ void load$default(COEView cOEView, InputStream inputStream, boolean z10, boolean z11, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
        }
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        cOEView.load(inputStream, z10, z11);
    }

    public final COERenderer getRenderer(int i10) {
        CopyOnWriteArrayList<BaseRenderer> layers = getLayers();
        return (COERenderer) (layers != null ? (BaseRenderer) o.T(layers, i10) : null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COEView(Context context, int i10) {
        super(context, i10);
        r.e(context, "context");
        this.notifiers = new LinkedHashMap();
    }

    public /* synthetic */ COEView(Context context, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COEView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        this.notifiers = new LinkedHashMap();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COEView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.notifiers = new LinkedHashMap();
    }

    public final void load(InputStream ins, boolean z10, boolean z11) {
        r.e(ins, "ins");
        if (getEngine() != null) {
            Trace.beginSection("COERenderer");
            long jCurrentTimeMillis = System.currentTimeMillis();
            NativeEngine engine = getEngine();
            if (engine != null) {
                engine.resetScene();
            }
            Iterator<T> it = getLayers().iterator();
            while (it.hasNext()) {
                ((BaseRenderer) it.next()).onDestroy();
            }
            getLayers().clear();
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            COEData cOEData = new COEParse().parse(kotlin.io.b.c(ins), z10);
            this.fileName = cOEData.getName();
            setLayers(new CopyOnWriteArrayList<>());
            int length = cOEData.getLayers().length;
            for (int i10 = 0; i10 < length; i10++) {
                NativeEngine engine2 = getEngine();
                r.b(engine2);
                COERenderer cOERenderer = new COERenderer(engine2, getWidth(), getHeight(), getCoeEngineListener(), cOEData, i10, true, new i(getLayers(), new HashMap(), this.notifiers));
                getLayers().add(cOERenderer);
                NativeEngine engine3 = getEngine();
                if (engine3 != null) {
                    engine3.addCallback(cOERenderer);
                }
            }
            if (z11) {
                start();
            }
            h8.a coeEngineListener = getCoeEngineListener();
            if (coeEngineListener != null) {
                coeEngineListener.d();
            }
            e.a aVar = f8.e.f12039a;
            String str = this.fileName;
            r.b(str);
            f8.c cVarB = aVar.b(str);
            if (cVarB != null) {
                cVarB.j((int) jCurrentTimeMillis2);
            }
            Trace.endSection();
        }
    }
}
