package com.coloros.translate.screen.translate.business;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import com.coloros.translate.screen.translate.business.d;
import com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener;
import com.coloros.translate.screen.translate.engine.translate.ScreenTranslateRequest;
import com.coloros.translate.screen.translate.engine.translate.TranslateManager;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.model.Coordinates;
import com.oplus.aiunit.translation.model.ImageTranslateItem;
import com.oplus.aiunit.translation.model.ImageTranslateResult;
import j8.n0;
import j8.v;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class h implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5528d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.a f5530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.coloros.translate.screen.translate.engine.language.j f5531c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements ImageTranslateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f5532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f5533b;

        b(g gVar, h hVar) {
            this.f5532a = gVar;
            this.f5533b = hVar;
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onError(String requestId, String message, int i10) {
            r.e(requestId, "requestId");
            r.e(message, "message");
            c0.f7098a.d("ScreenTranslationModel", "onImageResult onError:" + requestId + "," + this.f5532a.e().d() + ",errorCode:" + i10);
            this.f5532a.g();
            this.f5533b.f5530b.a(this.f5532a, i10);
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onImageResult(String requestId, ImageTranslateResult result) {
            r.e(requestId, "requestId");
            r.e(result, "result");
            c0.a aVar = c0.f7098a;
            aVar.d("ScreenTranslationModel", "onImageResult:" + result.getAlgorithmModel() + "," + requestId);
            if (this.f5532a.e().e()) {
                Integer algorithmModel = result.getAlgorithmModel();
                if (algorithmModel != null && algorithmModel.intValue() == 3) {
                    this.f5533b.l(this.f5532a, result);
                } else {
                    this.f5533b.m(this.f5532a, result);
                }
            } else {
                this.f5533b.k(this.f5532a, result);
            }
            aVar.d("ScreenTranslationModel", "onImageResult deal finish");
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onTextResult(String requestId, String result, int i10, boolean z10) {
            r.e(requestId, "requestId");
            r.e(result, "result");
        }
    }

    public h(Context context, d.a iBridge) {
        r.e(context, "context");
        r.e(iBridge, "iBridge");
        this.f5529a = context;
        this.f5530b = iBridge;
        this.f5531c = com.coloros.translate.screen.translate.engine.language.j.f5577i.a();
    }

    private final Bitmap g(String str) {
        if (str == null || str.length() == 0) {
            c0.f7098a.e("ScreenTranslationModel", "base64Data is empty");
            return null;
        }
        try {
            r.a aVar = n8.r.Companion;
            byte[] bArrDecode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("ScreenTranslationModel", "base64Data onFailure:" + thM62exceptionOrNullimpl);
            }
            return null;
        }
    }

    private final String h(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(compressFormat, i10, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        kotlin.jvm.internal.r.d(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    static /* synthetic */ String i(h hVar, Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        if ((i11 & 4) != 0) {
            i10 = 80;
        }
        return hVar.h(bitmap, compressFormat, i10);
    }

    private final int[] j(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return kotlin.collections.i.Q(iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(g gVar, ImageTranslateResult imageTranslateResult) {
        c0.a aVar = c0.f7098a;
        aVar.d("ScreenTranslationModel", "dealGetResultString");
        gVar.g();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        List<ImageTranslateItem> translate = imageTranslateResult.getTranslate();
        if (translate == null) {
            aVar.q("ScreenTranslationModel", "dealGetResultString data is null");
            this.f5530b.d(gVar, null, null);
            return;
        }
        int i10 = 0;
        for (Object obj : translate) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.q();
            }
            ImageTranslateItem imageTranslateItem = (ImageTranslateItem) obj;
            int paragraphNo = imageTranslateItem.getParagraphNo();
            Object sb = linkedHashMap.get(Integer.valueOf(paragraphNo));
            if (sb == null) {
                sb = new StringBuilder();
                linkedHashMap.put(Integer.valueOf(paragraphNo), sb);
            }
            Object sb2 = linkedHashMap2.get(Integer.valueOf(paragraphNo));
            if (sb2 == null) {
                sb2 = new StringBuilder();
                linkedHashMap2.put(Integer.valueOf(paragraphNo), sb2);
            }
            Integer algorithmModel = imageTranslateResult.getAlgorithmModel();
            if (algorithmModel == null || algorithmModel.intValue() != 3 || i10 == translate.size() - 1) {
                ((StringBuilder) sb).append(imageTranslateItem.getSourceText());
                ((StringBuilder) sb2).append(imageTranslateItem.getTranslateText());
            } else {
                StringBuilder sb3 = (StringBuilder) sb;
                sb3.append(imageTranslateItem.getSourceText());
                StringBuilder sb4 = (StringBuilder) sb2;
                sb4.append(imageTranslateItem.getTranslateText());
                sb3.append(System.lineSeparator());
                sb4.append(System.lineSeparator());
            }
            i10 = i11;
        }
        Iterator it = linkedHashMap.keySet().iterator();
        StringBuilder sb5 = new StringBuilder();
        while (it.hasNext()) {
            sb5.append((CharSequence) linkedHashMap.get(it.next()));
            if (it.hasNext()) {
                sb5.append(System.lineSeparator());
            }
        }
        Iterator it2 = linkedHashMap2.keySet().iterator();
        StringBuilder sb6 = new StringBuilder();
        while (it2.hasNext()) {
            sb6.append((CharSequence) linkedHashMap2.get(it2.next()));
            if (it2.hasNext()) {
                sb6.append(System.lineSeparator());
            }
        }
        this.f5530b.d(gVar, String.valueOf(sb5), String.valueOf(sb6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(g gVar, ImageTranslateResult imageTranslateResult) {
        Object objM59constructorimpl;
        Bitmap bitmapG;
        gVar.g();
        StringBuilder sb = new StringBuilder();
        List<ImageTranslateItem> translate = imageTranslateResult.getTranslate();
        if (translate != null) {
            Iterator<T> it = translate.iterator();
            while (it.hasNext()) {
                sb.append(((ImageTranslateItem) it.next()).getTranslateText());
            }
        }
        if (sb.length() == 0) {
            c0.f7098a.q("ScreenTranslationModel", "dealImageResultView translateText is empty");
            this.f5530b.a(gVar, 200011);
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            bitmapG = g(imageTranslateResult.getRenderImage());
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (bitmapG == null) {
            c0.f7098a.e("ScreenTranslationModel", "renderedBitmap is empty");
            return;
        }
        c0.f7098a.d("ScreenTranslationModel", "dealImageResultView");
        this.f5530b.b(gVar, bitmapG, sb.toString());
        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ScreenTranslationModel", "dealImageResultView " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(g gVar, ImageTranslateResult imageTranslateResult) {
        Object objM59constructorimpl;
        List listO;
        Bitmap bitmapA = gVar.a();
        if (bitmapA == null) {
            c0.f7098a.q("ScreenTranslationModel", "bitmap is recycled:" + gVar.e().d());
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            gVar.g();
            listO = o(imageTranslateResult, gVar.c());
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (listO == null) {
            c0.f7098a.e("ScreenTranslationModel", "dealRenderResultView renderDataList is null");
            bitmapA.recycle();
            return;
        }
        n0.a aVar3 = new n0.a();
        aVar3.f12836b = true;
        Bitmap bitmapC = n0.c(bitmapA, listO, this.f5529a, aVar3);
        bitmapA.recycle();
        c0.f7098a.d("ScreenTranslationModel", "dealRenderResultView");
        StringBuilder sb = new StringBuilder();
        List<ImageTranslateItem> translate = imageTranslateResult.getTranslate();
        if (translate != null) {
            Iterator<T> it = translate.iterator();
            while (it.hasNext()) {
                sb.append(((ImageTranslateItem) it.next()).getTranslateText());
                sb.append(System.lineSeparator());
            }
        }
        d.a aVar4 = this.f5530b;
        kotlin.jvm.internal.r.b(bitmapC);
        aVar4.b(gVar, bitmapC, sb.toString());
        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ScreenTranslationModel", "dealRenderResultView " + thM62exceptionOrNullimpl.getMessage());
            bitmapA.recycle();
        }
    }

    private final int[][] n(List list, float f10) {
        int[][] iArr = new int[4][];
        for (int i10 = 0; i10 < 4; i10++) {
            iArr[i10] = new int[2];
        }
        if (list != null && !list.isEmpty()) {
            iArr[0][0] = y8.a.b(((Coordinates) list.get(0)).getX() / f10);
            iArr[0][1] = y8.a.b(((Coordinates) list.get(0)).getY() / f10);
            iArr[1][0] = y8.a.b(((Coordinates) list.get(1)).getX() / f10);
            iArr[1][1] = y8.a.b(((Coordinates) list.get(1)).getY() / f10);
            iArr[2][0] = y8.a.b(((Coordinates) list.get(2)).getX() / f10);
            iArr[2][1] = y8.a.b(((Coordinates) list.get(2)).getY() / f10);
            iArr[3][0] = y8.a.b(((Coordinates) list.get(3)).getX() / f10);
            iArr[3][1] = y8.a.b(((Coordinates) list.get(3)).getY() / f10);
        }
        return iArr;
    }

    private final List o(ImageTranslateResult imageTranslateResult, float f10) {
        List<ImageTranslateItem> translate = imageTranslateResult.getTranslate();
        if (translate == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ImageTranslateItem imageTranslateItem : translate) {
            arrayList.add(new v(n(imageTranslateItem.getCoordinates(), f10), imageTranslateItem.getTranslateText(), com.coloros.translate.screen.translate.engine.language.j.f5577i.a().n().getLanguageCode(), imageTranslateItem.getParagraphNo(), (float) imageTranslateResult.getAngle(), j(imageTranslateItem.getTextColor()), j(imageTranslateItem.getBackgroundColor()), n(imageTranslateItem.getParagraphCoordinates(), f10)));
        }
        return arrayList;
    }

    @Override // com.coloros.translate.screen.translate.business.d
    public void a() {
        TranslateManager.Companion.getINSTANCE().cancelTranslate();
    }

    @Override // com.coloros.translate.screen.translate.business.d
    public void b(g presenterRequest) {
        kotlin.jvm.internal.r.e(presenterRequest, "presenterRequest");
        String str = System.currentTimeMillis() + z8.c.Default.nextInt(1000) + "_" + presenterRequest.e().d();
        Bitmap bitmapD = presenterRequest.d();
        if (bitmapD == null) {
            bitmapD = presenterRequest.b();
        }
        Bitmap bitmap = bitmapD;
        String strT = this.f5531c.t();
        if (kotlin.jvm.internal.r.a(strT, com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode())) {
            strT = "";
        }
        int i10 = !presenterRequest.e().e() ? 1 : 0;
        if (presenterRequest.f()) {
            c0.f7098a.q("ScreenTranslationModel", "translate PresenterRequest isRecycled");
            return;
        }
        ScreenTranslateRequest screenTranslateRequest = new ScreenTranslateRequest(str, strT, this.f5531c.z(), i10, i(this, bitmap, null, 0, 6, null));
        c0.f7098a.d("ScreenTranslationModel", "translate translateImage:" + str + "," + screenTranslateRequest.getSourceLanguage() + "," + screenTranslateRequest.getTargetLanguage());
        TranslateManager.Companion.getINSTANCE().translateImage(screenTranslateRequest, new b(presenterRequest, this));
    }
}
