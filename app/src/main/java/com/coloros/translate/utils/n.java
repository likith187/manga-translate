package com.coloros.translate.utils;

import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.backup.sdk.common.host.BREngineConfig;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final n INSTANCE = new n();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f7132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f7133b;

        public final long a() {
            long jD = b9.d.d((this.f7133b - this.f7132a) / ((long) 1000), 0L);
            this.f7132a = 0L;
            this.f7133b = 0L;
            return jD;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean b() {
            /*
                r7 = this;
                long r0 = r7.f7132a
                r2 = 0
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 == 0) goto L15
                long r4 = r7.f7133b
                int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r2 == 0) goto L15
                int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r2 >= 0) goto L13
                goto L15
            L13:
                r2 = 0
                goto L16
            L15:
                r2 = 1
            L16:
                com.coloros.translate.utils.c0$a r3 = com.coloros.translate.utils.c0.f7098a
                long r4 = r7.f7133b
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r6 = "isNoValidData:"
                r7.append(r6)
                r7.append(r2)
                java.lang.String r6 = " start:"
                r7.append(r6)
                r7.append(r0)
                java.lang.String r0 = " end:"
                r7.append(r0)
                r7.append(r4)
                java.lang.String r7 = r7.toString()
                java.lang.String r0 = "DataTrackReporterOS15"
                r3.d(r0, r7)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.utils.n.a.b():boolean");
        }

        public final void c(long j10) {
            this.f7133b = j10;
        }

        public final void d(long j10) {
            this.f7132a = j10;
        }
    }

    private n() {
    }

    public static /* synthetic */ void L(n nVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "1";
        }
        nVar.K(str);
    }

    public static /* synthetic */ void S(n nVar, String str, String str2, String str3, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = "unknown";
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        nVar.R(str, str2, str3, i10);
    }

    public static /* synthetic */ void X(n nVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = AuthUtil.AUTH_STYLE_INNER;
        }
        nVar.W(str);
    }

    public static /* synthetic */ void Z(n nVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "1";
        }
        nVar.Y(str);
    }

    private final String a(boolean z10) {
        return z10 ? "1" : AuthUtil.AUTH_STYLE_INNER;
    }

    private final void b(String str, Map map) {
        f1.f7117a.e(m.INSTANCE.a(), str, map);
    }

    static /* synthetic */ void c(n nVar, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = new HashMap();
        }
        nVar.b(str, map);
    }

    public final void A(boolean z10) {
        b("event_click_simultaneous_translate_auto_play_btn", kotlin.collections.j0.j(n8.w.a("switch", a(z10))));
    }

    public final void B(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_click_simultaneous_translate_enter_source", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void C() {
        c(this, "event_click_simultaneous_translate_history_btn", null, 2, null);
    }

    public final void D(boolean z10) {
        b("event_click_simultaneous_translate_record_switch", kotlin.collections.j0.j(n8.w.a("switch", a(z10))));
    }

    public final void E() {
        c(this, "event_click_simultaneous_translate_voice_btn", null, 2, null);
    }

    public final void F(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_click_text_translate_enter_source", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void G() {
        c(this, "event_click_text_translate_voice_btn", null, 2, null);
    }

    public final void H(int i10) {
        b("event_dialog_translate_asr_error", kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10))));
    }

    public final void I(String src, String target) {
        kotlin.jvm.internal.r.e(src, "src");
        kotlin.jvm.internal.r.e(target, "target");
        b("event_dialog_translate_asr_language", kotlin.collections.j0.j(n8.w.a("srcLanguage", src), n8.w.a(RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE, target)));
    }

    public final void J(a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_dialog_translate_page_duration", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void K(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_enter_translate_app_home", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void M(int i10) {
        b("event_face_to_face_asr_error", kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10))));
    }

    public final void N(String src, String target) {
        kotlin.jvm.internal.r.e(src, "src");
        kotlin.jvm.internal.r.e(target, "target");
        b("event_face_to_face_asr_language", kotlin.collections.j0.j(n8.w.a("srcLanguage", src), n8.w.a(RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE, target)));
    }

    public final void O(a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_face_to_face_page_duration", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void P(String type, a eventTime) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_function_use_time", kotlin.collections.j0.j(n8.w.a("type", type), n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void Q(String pluginName, String reason, String source) {
        kotlin.jvm.internal.r.e(pluginName, "pluginName");
        kotlin.jvm.internal.r.e(reason, "reason");
        kotlin.jvm.internal.r.e(source, "source");
        c0.f7098a.d("DataTrackReporterOS15", "eventPluginDownloadAbort: pluginName=" + pluginName + ", reason=" + reason + ", source=" + source);
        b("event_plugin_download_abort", kotlin.collections.j0.j(n8.w.a("pluginName", pluginName), n8.w.a("errorMsg", reason), n8.w.a(BREngineConfig.SOURCE, source)));
    }

    public final void R(String pluginName, String errorMsg, String source, int i10) {
        kotlin.jvm.internal.r.e(pluginName, "pluginName");
        kotlin.jvm.internal.r.e(errorMsg, "errorMsg");
        kotlin.jvm.internal.r.e(source, "source");
        c0.f7098a.d("DataTrackReporterOS15", "eventPluginDownloadFail: pluginName=" + pluginName + ", errorMsg=" + errorMsg + ", source=" + source + ", errorCode=" + i10);
        HashMap mapJ = kotlin.collections.j0.j(n8.w.a("pluginName", pluginName), n8.w.a("errorMsg", errorMsg), n8.w.a(BREngineConfig.SOURCE, source));
        if (i10 != -1) {
            mapJ.put("errorCode", String.valueOf(i10));
        }
        b("event_plugin_download_fail", mapJ);
    }

    public final void T(String pluginName, String source) {
        kotlin.jvm.internal.r.e(pluginName, "pluginName");
        kotlin.jvm.internal.r.e(source, "source");
        c0.f7098a.d("DataTrackReporterOS15", "eventPluginDownloadStart: pluginName=" + pluginName + ", source=" + source);
        b("event_plugin_download_start", kotlin.collections.j0.j(n8.w.a("pluginName", pluginName), n8.w.a(BREngineConfig.SOURCE, source)));
    }

    public final void U(String pluginName, String source) {
        kotlin.jvm.internal.r.e(pluginName, "pluginName");
        kotlin.jvm.internal.r.e(source, "source");
        c0.f7098a.d("DataTrackReporterOS15", "eventPluginDownloadSuccess: pluginName=" + pluginName + ", source=" + source);
        b("event_plugin_download_success", kotlin.collections.j0.j(n8.w.a("pluginName", pluginName), n8.w.a(BREngineConfig.SOURCE, source)));
    }

    public final void V(String reqId, String module, boolean z10) {
        kotlin.jvm.internal.r.e(reqId, "reqId");
        kotlin.jvm.internal.r.e(module, "module");
        if (kotlin.text.r.Y(reqId)) {
            return;
        }
        b("request_translate", kotlin.collections.j0.j(n8.w.a("reqid", reqId), n8.w.a("module", module), n8.w.a("is_sensitive_Interception", a(z10))));
    }

    public final void W(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_simultaneous_history_details_share_btn", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void Y(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_simultaneous_history_enter_edit_mode", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void a0(int i10) {
        b("event_simultaneous_translate_asr_error", kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10))));
    }

    public final void b0(String src, String target) {
        kotlin.jvm.internal.r.e(src, "src");
        kotlin.jvm.internal.r.e(target, "target");
        b("event_simultaneous_translate_asr_language", kotlin.collections.j0.j(n8.w.a("srcLanguage", src), n8.w.a(RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE, target)));
    }

    public final void c0(int i10, int i11) {
        b("event_simultaneous_translate_once_data_time", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(i11)), n8.w.a("count", String.valueOf(i10))));
    }

    public final void d(boolean z10) {
        b("event_click_dialog_translate_auto_play_btn", kotlin.collections.j0.j(n8.w.a("switch", a(z10))));
    }

    public final void d0(a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_simultaneous_translate_page_duration", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void e(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_click_dialog_translate_enter_source", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void e0(int i10, String errorMsg) {
        kotlin.jvm.internal.r.e(errorMsg, "errorMsg");
        c0.f7098a.d("DataTrackReporterOS15", "eventTextTranslateAsrError: errorStatus=" + i10 + ", errorMsg=" + errorMsg);
        HashMap mapJ = kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10)));
        if (errorMsg.length() > 0) {
            mapJ.put("errorMsg", errorMsg);
        }
        b("event_text_translate_asr_error", mapJ);
    }

    public final void f() {
        c(this, "event_click_dialog_translate_voice_btn", null, 2, null);
    }

    public final void f0(String src, String target) {
        kotlin.jvm.internal.r.e(src, "src");
        kotlin.jvm.internal.r.e(target, "target");
        b("event_text_translate_asr_language", kotlin.collections.j0.j(n8.w.a("srcLanguage", src), n8.w.a(RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE, target)));
    }

    public final void g(boolean z10, a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (!eventTime.b() || z10) {
            b("event_click_double_screen_btn", kotlin.collections.j0.j(n8.w.a("switch", a(z10)), n8.w.a("duration", String.valueOf(z10 ? 0L : eventTime.a()))));
        }
    }

    public final void g0(int i10, String reqId, String module, boolean z10, String errorMsg) {
        kotlin.jvm.internal.r.e(reqId, "reqId");
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(errorMsg, "errorMsg");
        c0.f7098a.d("DataTrackReporterOS15", "eventTextTranslateError: errorStatus=" + i10 + ", reqId=" + reqId + ", module=" + module + ", isSensitive=" + z10 + ", errorMsg=" + errorMsg);
        HashMap mapJ = kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10)), n8.w.a("reqid", reqId), n8.w.a("module", module), n8.w.a("is_sensitive_Interception", a(z10)));
        if (errorMsg.length() > 0) {
            mapJ.put("errorMsg", errorMsg);
        }
        b("event_text_translate_error", mapJ);
    }

    public final void h(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        b("event_click_face_to_face_enter_source", kotlin.collections.j0.j(n8.w.a("type", type)));
    }

    public final void h0(String src, String target, int i10, String type) {
        kotlin.jvm.internal.r.e(src, "src");
        kotlin.jvm.internal.r.e(target, "target");
        kotlin.jvm.internal.r.e(type, "type");
        b("event_text_translate_language", kotlin.collections.j0.j(n8.w.a("srcLanguage", src), n8.w.a(RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE, target), n8.w.a("count", String.valueOf(i10)), n8.w.a("algorithm_type", type)));
    }

    public final void i() {
        c(this, "event_click_face_to_face_voice_me_btn", null, 2, null);
    }

    public final void i0(a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_text_translate_page_duration", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void j() {
        c(this, "event_click_face_to_face_voice_other_btn", null, 2, null);
    }

    public final void j0(a eventTime) {
        kotlin.jvm.internal.r.e(eventTime, "eventTime");
        if (eventTime.b()) {
            return;
        }
        b("event_translate_app_home_page_duration", kotlin.collections.j0.j(n8.w.a("duration", String.valueOf(eventTime.a()))));
    }

    public final void k() {
        c(this, "event_click_home_caption_translate_btn", null, 2, null);
    }

    public final void k0(int i10) {
        b("event_tts_error", kotlin.collections.j0.j(n8.w.a("errorCode", String.valueOf(i10))));
    }

    public final void l() {
        c(this, "event_click_home_dialog_translate_btn", null, 2, null);
    }

    public final void m() {
        c(this, "event_click_home_document_translate_btn", null, 2, null);
    }

    public final void n() {
        c(this, "event_click_home_real_subtitle_btn", null, 2, null);
    }

    public final void o() {
        c(this, "event_click_home_screen_translate_btn", null, 2, null);
    }

    public final void p() {
        c(this, "event_click_home_simultaneous_translate_btn", null, 2, null);
    }

    public final void q() {
        c(this, "event_click_home_text_translate_btn", null, 2, null);
    }

    public final void r() {
        c(this, "event_click_jump_offline_download", null, 2, null);
    }

    public final void s(int i10) {
        b("event_click_select_voice_speed_item", kotlin.collections.j0.j(n8.w.a("speed", String.valueOf(i10))));
    }

    public final void t() {
        c(this, "event_click_setting_btn", null, 2, null);
    }

    public final void u() {
        c(this, "event_click_simultaneous_history_delete_btn", null, 2, null);
    }

    public final void v() {
        c(this, "event_click_simultaneous_history_details_delete_btn", null, 2, null);
    }

    public final void w() {
        c(this, "event_click_simultaneous_history_details_play_btn", null, 2, null);
    }

    public final void x() {
        c(this, "event_click_simultaneous_history_details_rename_btn", null, 2, null);
    }

    public final void y() {
        c(this, "event_click_simultaneous_history_rename_btn", null, 2, null);
    }

    public final void z() {
        c(this, "event_click_simultaneous_save_dialog_save_btn", null, 2, null);
    }
}
