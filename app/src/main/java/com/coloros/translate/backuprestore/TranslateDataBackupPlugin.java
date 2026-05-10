package com.coloros.translate.backuprestore;

import android.content.Context;
import android.os.Bundle;
import com.coloros.translate.backuprestore.TranslateDataBackupPlugin;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.repository.local.SimultaneousSentence;
import com.coloros.translate.repository.local.TextHistory;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import com.coloros.translate.utils.y;
import com.oplus.backup.sdk.common.host.BREngineConfig;
import com.oplus.backup.sdk.component.BRPluginHandler;
import com.oplus.backup.sdk.component.plugin.BackupPlugin;
import com.oplus.backup.sdk.host.listener.ProgressHelper;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class TranslateDataBackupPlugin extends BackupPlugin {
    public static final int BACKUP_AUDIO_ERROR_CODE = 102;
    public static final int BACKUP_AUDIO_FILE_NOT_FOUND_ERROR_CODE = 101;
    public static final int BACKUP_AUDIO_IO_ERROR_CODE = 100;
    public static final int BACKUP_XML_ERROR_CODE = 105;
    public static final int BACKUP_XML_FILE_NOT_FOUND_ERROR_CODE = 104;
    public static final int BACKUP_XML_IO_ERROR_CODE = 103;
    public static final a Companion = new a(null);
    public static final int DEFAULT_BUFFER_SIZE = 1024;
    public static final int ERROR_CODE_INVALID = -1;
    public static final int ERROR_CODE_NUMBER_MISMATCH = 122;
    public static final long STEP = 30000;
    public static final String TAG = "TranslateDataBackupPlugin";
    public static final long TIMEOUT_START_TIME = 60000;
    public static final long TIMEOUT_TIME = 120000;
    public static final long UPDATE_BACKUP_PROGRESS_DEFAULT_INTERVAL_TIME = 1000;
    private String mBackupInfoXmlPath;
    private int mCompleteCount;
    private boolean mHasException;
    private boolean mIsBackupSuccess;
    private boolean mIsCancel;
    private boolean mIsChangeCompleteCount;
    private int mMaxCount;
    private String mSimultaneousAudioFilePath;
    private String mSimultaneousHistoryBackupXmlPath;
    private String mSimultaneousSentenceBackupXmlPath;
    private String mTextHistoryBackupXmlPath;
    private String mTranslateBackupBasicPath;
    private int mErrorCode = -1;
    private String mErrorMsg = "";
    private String mErrorDesc = "";
    private long mUpdateBackupProgressIntervalTime = 1000;
    private final j mBackupHandler$delegate = k.b(b.INSTANCE);
    private final j mProgress$delegate = k.b(c.INSTANCE);
    private final j mUpdateBackupProgress$delegate = k.b(new d());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final v0 mo8invoke() {
            return new v0("Backup_HandlerTread");
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Bundle mo8invoke() {
            return new Bundle();
        }
    }

    static final class d extends s implements w8.a {
        d() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(TranslateDataBackupPlugin this$0) {
            r.e(this$0, "this$0");
            this$0.updateBackupProgress();
            this$0.mUpdateBackupProgressIntervalTime = this$0.mIsChangeCompleteCount ? 1000L : this$0.mUpdateBackupProgressIntervalTime < 60000 ? 60000L : this$0.mUpdateBackupProgressIntervalTime + 30000;
            this$0.mIsChangeCompleteCount = false;
            if (this$0.mUpdateBackupProgressIntervalTime <= 120000) {
                this$0.getMBackupHandler().d(this$0.getMUpdateBackupProgress(), this$0.mUpdateBackupProgressIntervalTime);
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Runnable mo8invoke() {
            final TranslateDataBackupPlugin translateDataBackupPlugin = TranslateDataBackupPlugin.this;
            return new Runnable() { // from class: com.coloros.translate.backuprestore.f
                @Override // java.lang.Runnable
                public final void run() {
                    TranslateDataBackupPlugin.d.invoke$lambda$0(translateDataBackupPlugin);
                }
            };
        }
    }

    private final void backUpAudioData() throws Throwable {
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "backUpAudioData");
        File fileF = com.coloros.translate.ui.simultaneous.utils.b.f();
        if (!fileF.exists()) {
            aVar.q(TAG, "backUpAudioData，audioFileRootDir not exists");
            return;
        }
        File[] fileArrListFiles = fileF.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            aVar.q(TAG, "backUpAudioData，audioFiles is null");
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.mIsCancel) {
                c0.f7098a.e(TAG, "backUpAudioData is cancelled");
                return;
            }
            if (file != null && file.isFile()) {
                backUpAudioFile(file);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5 A[PHI: r1 r12
      0x00c5: PHI (r1v5 java.nio.channels.FileChannel) = (r1v3 java.nio.channels.FileChannel), (r1v6 java.nio.channels.FileChannel) binds: [B:29:0x00c3, B:36:0x00f5] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r12v8 ??) = (r12v6 ??), (r12v9 ??) binds: [B:29:0x00c3, B:36:0x00f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void backUpAudioFile(java.io.File r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.backuprestore.TranslateDataBackupPlugin.backUpAudioFile(java.io.File):void");
    }

    private final void backupSimultaneousHistory() throws Throwable {
        ArrayList<SimultaneousHistory> arrayList = new ArrayList(i2.a.INSTANCE.f().t().h());
        com.coloros.translate.backuprestore.c cVar = new com.coloros.translate.backuprestore.c();
        cVar.f("simultaneousHistories");
        if (!arrayList.isEmpty()) {
            for (SimultaneousHistory simultaneousHistory : arrayList) {
                r.b(simultaneousHistory);
                cVar.h(simultaneousHistory);
            }
        }
        cVar.a("simultaneousHistories");
        String str = this.mSimultaneousHistoryBackupXmlPath;
        if (str == null) {
            r.r("mSimultaneousHistoryBackupXmlPath");
            str = null;
        }
        saveXmlInfo(cVar, arrayList, str);
    }

    private final void backupSimultaneousSentence() throws Throwable {
        ArrayList<SimultaneousSentence> arrayList = new ArrayList(i2.a.INSTANCE.f().u().g());
        com.coloros.translate.backuprestore.d dVar = new com.coloros.translate.backuprestore.d();
        dVar.f("simultaneousSentences");
        if (!arrayList.isEmpty()) {
            for (SimultaneousSentence simultaneousSentence : arrayList) {
                r.b(simultaneousSentence);
                dVar.h(simultaneousSentence);
            }
        }
        dVar.a("simultaneousSentences");
        String str = this.mSimultaneousSentenceBackupXmlPath;
        if (str == null) {
            r.r("mSimultaneousSentenceBackupXmlPath");
            str = null;
        }
        saveXmlInfo(dVar, arrayList, str);
    }

    private final void backupTextHistory() throws Throwable {
        ArrayList<TextHistory> arrayList = new ArrayList(i2.a.INSTANCE.f().v().b());
        e eVar = new e();
        eVar.f("textHistories");
        if (!arrayList.isEmpty()) {
            for (TextHistory textHistory : arrayList) {
                r.b(textHistory);
                eVar.h(textHistory);
            }
        }
        eVar.a("textHistories");
        String str = this.mTextHistoryBackupXmlPath;
        if (str == null) {
            r.r("mTextHistoryBackupXmlPath");
            str = null;
        }
        saveXmlInfo(eVar, arrayList, str);
    }

    private final int getAudioFileCount() {
        File fileF = com.coloros.translate.ui.simultaneous.utils.b.f();
        if (!fileF.exists()) {
            c0.f7098a.q(TAG, "getAudioFileCount ，audioFileRootDir not exists");
            return 0;
        }
        File[] fileArrListFiles = fileF.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            c0.f7098a.q(TAG, "getAudioFileCount ，audioFiles is null");
            return 0;
        }
        int length = fileArrListFiles.length;
        c0.f7098a.d(TAG, "getAudioFileCount, audioFileCount=" + length);
        return length;
    }

    private final long getAudioFolderSize() {
        File fileF = com.coloros.translate.ui.simultaneous.utils.b.f();
        long jH = !y.i(fileF) ? y.h(fileF) : 0L;
        c0.f7098a.d(TAG, "getAudioFolderSize, size=" + jH);
        return jH;
    }

    private final long getBackupDatabaseSize() {
        long length;
        try {
            length = getContext().getDatabasePath("conversation-db").length();
        } catch (FileNotFoundException e10) {
            c0.f7098a.d(TAG, "getBackupDataSize , FileNotFoundException " + e10.getMessage());
            length = 0;
        }
        c0.f7098a.d(TAG, "getBackupDatabaseSize , size=" + length);
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v0 getMBackupHandler() {
        return (v0) this.mBackupHandler$delegate.getValue();
    }

    private final Bundle getMProgress() {
        return (Bundle) this.mProgress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable getMUpdateBackupProgress() {
        return (Runnable) this.mUpdateBackupProgress$delegate.getValue();
    }

    private final int getMaxCount() {
        int audioFileCount = getAudioFileCount();
        i2.a aVar = i2.a.INSTANCE;
        int iE = aVar.f().t().e();
        return audioFileCount + iE + aVar.f().u().c() + aVar.f().v().f();
    }

    private final void handleFailed(int i10, String str, String str2) {
        this.mHasException = true;
        this.mErrorCode = i10;
        this.mErrorMsg = str;
        this.mErrorDesc = str2;
    }

    private final void putFailedInfo(Bundle bundle) {
        if (this.mHasException) {
            ProgressHelper.putFailedInfo(bundle, this.mErrorCode, this.mErrorMsg, this.mErrorDesc);
        } else {
            if (this.mIsBackupSuccess) {
                return;
            }
            ProgressHelper.putFailedInfo(bundle, 122, "", "The completed quantity does not match the total quantity");
        }
    }

    private final void putResult(Bundle bundle) {
        ProgressHelper.putBRResult(bundle, this.mIsBackupSuccess ? 1 : this.mIsCancel ? 3 : 2);
        ProgressHelper.putMaxCount(bundle, this.mMaxCount);
        ProgressHelper.putCompletedCount(bundle, this.mCompleteCount);
    }

    private final void saveXmlInfo(com.coloros.translate.backuprestore.b bVar, List<? extends Object> list, String str) throws Throwable {
        if (this.mIsCancel) {
            c0.f7098a.q(TAG, "saveXmlInfo is cancelled");
            return;
        }
        String strValueOf = String.valueOf(bVar.e());
        if (strValueOf.length() <= 0) {
            c0.f7098a.e(TAG, "xmlInfo is empty");
            return;
        }
        int size = list.size();
        byte[] bytes = strValueOf.getBytes(kotlin.text.d.f13110a);
        r.d(bytes, "getBytes(...)");
        writeToFile(str, bytes, size);
    }

    private final void setMCompleteCount(int i10) {
        if (this.mCompleteCount != i10) {
            this.mIsChangeCompleteCount = true;
            if (this.mUpdateBackupProgressIntervalTime >= 120000) {
                updateBackupProgress();
            }
        }
        this.mCompleteCount = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBackupProgress() {
        ProgressHelper.putMaxCount(getMProgress(), this.mMaxCount);
        ProgressHelper.putCompletedCount(getMProgress(), this.mCompleteCount);
        getPluginHandler().updateProgress(getMProgress());
    }

    private final void writeToFile(String str, byte[] bArr, int i10) throws Throwable {
        c0.a aVar;
        String message;
        StringBuilder sb;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileDescriptor fileDescriptor = getFileDescriptor(str);
                if (fileDescriptor == null) {
                    c0.f7098a.q(TAG, "writeToFile , fileDescriptor is null");
                    return;
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileDescriptor);
                try {
                    fileOutputStream2.write(bArr, 0, bArr.length);
                    fileOutputStream2.flush();
                    setMCompleteCount(this.mCompleteCount + i10);
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e10) {
                        aVar = c0.f7098a;
                        message = e10.getMessage();
                        sb = new StringBuilder();
                        sb.append("writeToFile()");
                        sb.append(message);
                        aVar.e(TAG, sb.toString());
                    }
                } catch (IOException e11) {
                    e = e11;
                    fileOutputStream = fileOutputStream2;
                    c0.f7098a.e(TAG, "writeToFile IOException: " + e.getMessage());
                    handleFailed(103, "", String.valueOf(e.getMessage()));
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e12) {
                            aVar = c0.f7098a;
                            message = e12.getMessage();
                            sb = new StringBuilder();
                            sb.append("writeToFile()");
                            sb.append(message);
                            aVar.e(TAG, sb.toString());
                        }
                    }
                } catch (Exception e13) {
                    e = e13;
                    fileOutputStream = fileOutputStream2;
                    c0.f7098a.e(TAG, "writeToFile Exception: " + e.getMessage());
                    handleFailed(105, "", String.valueOf(e.getMessage()));
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e14) {
                            aVar = c0.f7098a;
                            message = e14.getMessage();
                            sb = new StringBuilder();
                            sb.append("writeToFile()");
                            sb.append(message);
                            aVar.e(TAG, sb.toString());
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e15) {
                            c0.f7098a.e(TAG, "writeToFile()" + e15.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (IOException e16) {
                e = e16;
            } catch (Exception e17) {
                e = e17;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onBackup(Bundle bundle) throws Throwable {
        c0.f7098a.d(TAG, "onBackup");
        int i10 = this.mMaxCount;
        if (i10 <= 0 || this.mIsCancel || this.mCompleteCount >= i10) {
            return;
        }
        getMBackupHandler().d(getMUpdateBackupProgress(), this.mUpdateBackupProgressIntervalTime);
        backUpAudioData();
        backupTextHistory();
        backupSimultaneousHistory();
        backupSimultaneousSentence();
        getMBackupHandler().g(getMUpdateBackupProgress());
        updateBackupProgress();
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onCancel(Bundle bundle) {
        c0.f7098a.d(TAG, "onCancel");
        this.mIsCancel = true;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onContinue(Bundle bundle) {
        c0.f7098a.d(TAG, "onContinue");
    }

    @Override // com.oplus.backup.sdk.component.plugin.AbstractPlugin
    public void onCreate(Context context, BRPluginHandler bRPluginHandler, BREngineConfig bREngineConfig) {
        super.onCreate(context, bRPluginHandler, bREngineConfig);
        c0.f7098a.d(TAG, "onCreate");
        if (this.mMaxCount == 0) {
            this.mMaxCount = getMaxCount();
        }
        String backupRootPath = bREngineConfig != null ? bREngineConfig.getBackupRootPath() : null;
        String str = File.separator;
        String str2 = backupRootPath + str + "Translation";
        this.mTranslateBackupBasicPath = str2;
        this.mBackupInfoXmlPath = str2 + str + "backup_info.xml";
        this.mTextHistoryBackupXmlPath = this.mTranslateBackupBasicPath + str + "text_history_backup.xml";
        this.mSimultaneousHistoryBackupXmlPath = this.mTranslateBackupBasicPath + str + "simultaneous_history_backup.xml";
        this.mSimultaneousSentenceBackupXmlPath = this.mTranslateBackupBasicPath + str + "simultaneous_sentence_backup.xml";
        this.mSimultaneousAudioFilePath = this.mTranslateBackupBasicPath + str + "AudioFileData";
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onDestroy(Bundle bundle) {
        r.e(bundle, "bundle");
        if (this.mMaxCount == this.mCompleteCount) {
            this.mIsBackupSuccess = true;
        }
        putResult(bundle);
        putFailedInfo(bundle);
        getMBackupHandler().f();
        c0.f7098a.d(TAG, "onDestroy bundle=" + bundle);
        return bundle;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onPause(Bundle bundle) {
        c0.f7098a.d(TAG, "onPause");
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onPrepare(Bundle bundle) throws Throwable {
        this.mIsBackupSuccess = false;
        com.coloros.translate.backuprestore.a aVar = new com.coloros.translate.backuprestore.a();
        aVar.g(this.mMaxCount);
        if (!this.mIsCancel) {
            String strValueOf = String.valueOf(aVar.e());
            if (strValueOf.length() > 0) {
                String str = this.mBackupInfoXmlPath;
                if (str == null) {
                    r.r("mBackupInfoXmlPath");
                    str = null;
                }
                byte[] bytes = strValueOf.getBytes(kotlin.text.d.f13110a);
                r.d(bytes, "getBytes(...)");
                writeToFile(str, bytes, 0);
            } else {
                c0.f7098a.e(TAG, "write backupInfoXml failed!");
            }
        }
        Bundle bundle2 = new Bundle();
        bundle2.putInt(ProgressHelper.MAX_COUNT, this.mMaxCount);
        c0.f7098a.d(TAG, "onPrepare prepareBundle=" + bundle2);
        return bundle2;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onPreview(Bundle bundle) {
        this.mIsBackupSuccess = true;
        long backupDatabaseSize = getBackupDatabaseSize() + getAudioFolderSize();
        Bundle bundle2 = new Bundle();
        ProgressHelper.putMaxCount(bundle2, this.mMaxCount);
        ProgressHelper.putPreviewDataSize(bundle2, backupDatabaseSize);
        c0.f7098a.d(TAG, "onPreview previewBundle=" + bundle2);
        return bundle2;
    }
}
