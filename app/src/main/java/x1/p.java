package x1;

import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;

/* JADX INFO: loaded from: classes.dex */
public interface p {
    void a(byte[] bArr, long j10);

    void d();

    void f(int i10, int i11, String str);

    void onRecordTime(long j10);

    void onRtasrResult(AsrResult asrResult);

    void onTranslateResult(AsrTranslateResult asrTranslateResult);
}
