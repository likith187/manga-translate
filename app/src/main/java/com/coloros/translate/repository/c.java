package com.coloros.translate.repository;

import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.w;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        public final void invoke() {
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        public final void invoke() {
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.coloros.translate.repository.c$c, reason: collision with other inner class name */
    public static final class C0072c extends s implements w8.a {
        public static final C0072c INSTANCE = new C0072c();

        C0072c() {
            super(0);
        }

        public final void invoke() {
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }
    }

    public static final void a(int i10, String str, w8.a silenceCallBack, w8.a noNet, w8.a stopCallBack) {
        r.e(silenceCallBack, "silenceCallBack");
        r.e(noNet, "noNet");
        r.e(stopCallBack, "stopCallBack");
        boolean z10 = true;
        boolean z11 = i10 == com.coloros.translate.repository.b.ASR_NET_CONNECT.getCode() || i10 == com.coloros.translate.repository.b.ASR_ERROR_DECRYPT_ACK.getCode() || i10 == com.coloros.translate.repository.b.ASR_ERROR_PROCESS_DOWN.getCode();
        if (i10 != com.coloros.translate.repository.b.ASR_PARAM_INVALID.getCode() && i10 != com.coloros.translate.repository.b.ASR_ERROR_END_ASR.getCode() && i10 != com.coloros.translate.repository.b.ASR_TASK_NET_ERROR.getCode()) {
            z10 = false;
        }
        if (z11 || z10) {
            c0.f7098a.i("ERROR_CODE", "dealWithErrorTip reject code:" + i10 + " msg:" + str);
            return;
        }
        c0.f7098a.i("ERROR_CODE", "dealWithErrorTip code:" + i10 + " msg:" + str);
        if (i10 == com.coloros.translate.repository.b.SILENCE_TIMEOUT.getCode()) {
            silenceCallBack.mo8invoke();
            return;
        }
        if (i10 == -1000) {
            w.h(R.string.no_network, 0, 2, null);
            noNet.mo8invoke();
        } else if (i10 == com.coloros.translate.repository.b.ASR_NOT_SUPPORT.getCode()) {
            w.h(R.string.translate_error, 0, 2, null);
            stopCallBack.mo8invoke();
        } else if (com.coloros.translate.repository.b.ASR_INIT_ERROR.getCode() == i10) {
            w.h(R.string.translate_error, 0, 2, null);
            stopCallBack.mo8invoke();
        } else {
            w.h(R.string.network_fail, 0, 2, null);
            stopCallBack.mo8invoke();
        }
    }

    public static /* synthetic */ void b(int i10, String str, w8.a aVar, w8.a aVar2, w8.a aVar3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            aVar = a.INSTANCE;
        }
        if ((i11 & 8) != 0) {
            aVar2 = b.INSTANCE;
        }
        if ((i11 & 16) != 0) {
            aVar3 = C0072c.INSTANCE;
        }
        a(i10, str, aVar, aVar2, aVar3);
    }

    public static final void c(int i10, String str) {
        if (i10 == -1000) {
            w.h(R.string.no_network, 0, 2, null);
        } else {
            w.h(R.string.network_error, 0, 2, null);
        }
    }

    public static final boolean d(int i10) {
        return ((i10 == com.coloros.translate.repository.b.ASR_NET_CONNECT.getCode() || i10 == com.coloros.translate.repository.b.ASR_ERROR_DECRYPT_ACK.getCode() || i10 == com.coloros.translate.repository.b.ASR_ERROR_PROCESS_DOWN.getCode()) || (i10 == com.coloros.translate.repository.b.ASR_PARAM_INVALID.getCode() || i10 == com.coloros.translate.repository.b.ASR_ERROR_END_ASR.getCode() || i10 == com.coloros.translate.repository.b.ASR_TASK_NET_ERROR.getCode())) ? false : true;
    }
}
