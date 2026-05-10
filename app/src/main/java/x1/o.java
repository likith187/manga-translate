package x1;

import android.os.Bundle;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrParams;

/* JADX INFO: loaded from: classes.dex */
public interface o {
    void destroy();

    Bundle invokeMethod(String str, String str2, Bundle bundle);

    void pauseRecord();

    void registerRtasrListener(String str, IRtasrListener iRtasrListener);

    void resumeRecord();

    void saveAudioFile(Bundle bundle);

    void sendAudioBytes(byte[] bArr);

    void setConfig(AsrParams asrParams);

    void startAsr(Bundle bundle);

    void startRecord();

    void stop();

    void stopAsr();

    void stopAudioFile();

    void stopRecord();

    void unRegisterRtasrListener(String str);

    void useBluetoothMic(boolean z10);
}
