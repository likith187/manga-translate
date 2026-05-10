package com.coloros.translate.backuprestore;

import android.content.Context;
import android.os.Bundle;
import com.coloros.translate.backuprestore.TranslateDataRestorePlugin;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.repository.local.SimultaneousSentence;
import com.coloros.translate.repository.local.TextHistory;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import com.oplus.backup.sdk.common.bean.FileWrapper;
import com.oplus.backup.sdk.common.host.BREngineConfig;
import com.oplus.backup.sdk.component.BRPluginHandler;
import com.oplus.backup.sdk.component.plugin.RestorePlugin;
import com.oplus.backup.sdk.host.listener.ProgressHelper;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class TranslateDataRestorePlugin extends RestorePlugin {
    public static final a Companion = new a(null);
    public static final int ERROR_CODE_INVALID = -1;
    public static final int ERROR_CODE_NUMBER_MISMATCH = 123;
    public static final int RESTORE_AUDIO_ERROR_CODE = 108;
    public static final int RESTORE_AUDIO_FILE_NOT_FOUND_ERROR_CODE = 107;
    public static final int RESTORE_AUDIO_IO_ERROR_CODE = 106;
    public static final int RESTORE_DATABASE_VERSION_DIFFERENT_ERROR_CODE = 121;
    public static final int RESTORE_SIMULTANEOUS_HISTORY_ERROR_CODE = 112;
    public static final int RESTORE_SIMULTANEOUS_HISTORY_FILE_NOT_FOUND_ERROR_CODE = 109;
    public static final int RESTORE_SIMULTANEOUS_HISTORY_IO_ERROR_CODE = 111;
    public static final int RESTORE_SIMULTANEOUS_HISTORY_SQL_ERROR_CODE = 110;
    public static final int RESTORE_SIMULTANEOUS_SENTENCE_ERROR_CODE = 116;
    public static final int RESTORE_SIMULTANEOUS_SENTENCE_FILE_NOT_FOUND_ERROR_CODE = 113;
    public static final int RESTORE_SIMULTANEOUS_SENTENCE_IO_ERROR_CODE = 115;
    public static final int RESTORE_SIMULTANEOUS_SENTENCE_SQL_ERROR_CODE = 114;
    public static final int RESTORE_TEXT_HISTORY_ERROR_CODE = 120;
    public static final int RESTORE_TEXT_HISTORY_FILE_NOT_FOUND_ERROR_CODE = 117;
    public static final int RESTORE_TEXT_HISTORY_IO_ERROR_CODE = 119;
    public static final int RESTORE_TEXT_HISTORY_SQL_ERROR_CODE = 118;
    public static final long STEP = 30000;
    public static final String TAG = "TranslateDataRestorePlugin";
    public static final long TIMEOUT_START_TIME = 60000;
    public static final long TIMEOUT_TIME = 120000;
    public static final long UPDATE_RESTORE_PROGRESS_DEFAULT_INTERVAL_TIME = 1000;
    private BRPluginHandler mBRPluginHandler;
    private Bundle mBackupInfoBundle;
    private String mBackupInfoXmlPath;
    private int mCompleteCount;
    private boolean mHasException;
    private boolean mIsCancel;
    private boolean mIsChangeCompleteCount;
    private boolean mIsRestoreSuccess;
    private int mMaxCount;
    private String mSimultaneousAudioFilePath;
    private String mSimultaneousHistoryBackupXmlPath;
    private String mSimultaneousSentenceBackupXmlPath;
    private String mTextHistoryBackupXmlPath;
    private String mTranslateBackupBasicPath;
    private int mErrorCode = -1;
    private String mErrorMsg = "";
    private String mErrorDesc = "";
    private long mUpdateRestoreProgressIntervalTime = 1000;
    private final j mRestoreHandler$delegate = k.b(c.INSTANCE);
    private final j mProgress$delegate = k.b(b.INSTANCE);
    private final j mUpdateRestoreProgress$delegate = k.b(new d());

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
        public final Bundle mo8invoke() {
            return new Bundle();
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final v0 mo8invoke() {
            return new v0("Restore_HandlerTread");
        }
    }

    static final class d extends s implements w8.a {
        d() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(TranslateDataRestorePlugin this$0) {
            r.e(this$0, "this$0");
            this$0.updateRestoreProgress();
            this$0.mUpdateRestoreProgressIntervalTime = this$0.mIsChangeCompleteCount ? 1000L : this$0.mUpdateRestoreProgressIntervalTime < 60000 ? 60000L : this$0.mUpdateRestoreProgressIntervalTime + 30000;
            this$0.mIsChangeCompleteCount = false;
            if (this$0.mUpdateRestoreProgressIntervalTime <= 120000) {
                this$0.getMRestoreHandler().d(this$0.getMUpdateRestoreProgress(), this$0.mUpdateRestoreProgressIntervalTime);
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Runnable mo8invoke() {
            final TranslateDataRestorePlugin translateDataRestorePlugin = TranslateDataRestorePlugin.this;
            return new Runnable() { // from class: com.coloros.translate.backuprestore.g
                @Override // java.lang.Runnable
                public final void run() {
                    TranslateDataRestorePlugin.d.invoke$lambda$0(translateDataRestorePlugin);
                }
            };
        }
    }

    private final Bundle getMProgress() {
        return (Bundle) this.mProgress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v0 getMRestoreHandler() {
        return (v0) this.mRestoreHandler$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable getMUpdateRestoreProgress() {
        return (Runnable) this.mUpdateRestoreProgress$delegate.getValue();
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
            if (this.mIsRestoreSuccess) {
                return;
            }
            ProgressHelper.putFailedInfo(bundle, 123, "", "The completed quantity does not match the total quantity");
        }
    }

    private final void putResult(Bundle bundle) {
        ProgressHelper.putBRResult(bundle, this.mIsRestoreSuccess ? 1 : this.mIsCancel ? 3 : 2);
        ProgressHelper.putMaxCount(bundle, this.mMaxCount);
        ProgressHelper.putCompletedCount(bundle, this.mCompleteCount);
    }

    private final void restoreAudioData() throws Throwable {
        String strJ0;
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "restoreAudioData");
        File fileF = com.coloros.translate.ui.simultaneous.utils.b.f();
        if (!fileF.exists()) {
            fileF.mkdirs();
        }
        String str = this.mSimultaneousAudioFilePath;
        if (str == null) {
            r.r("mSimultaneousAudioFilePath");
            str = null;
        }
        ArrayList<FileWrapper> arrayListListFiles = listFiles(str);
        if (arrayListListFiles == null || arrayListListFiles.isEmpty()) {
            aVar.q(TAG, "restoreAudioData sourceAudioFileNameList is null");
            return;
        }
        for (FileWrapper fileWrapper : arrayListListFiles) {
            if (!fileWrapper.isFile()) {
                c0.f7098a.q(TAG, "restoreAudioData sourceAudioFile not a file");
                return;
            }
            String path = fileWrapper.getPath();
            String strO0 = (path == null || (strJ0 = kotlin.text.r.J0(path, "/", null, 2, null)) == null) ? null : kotlin.text.r.O0(strJ0, '/');
            String str2 = fileF.getAbsolutePath() + File.separator + strO0;
            if (this.mIsCancel) {
                c0.f7098a.e(TAG, "restoreAudioData is cancelled");
                return;
            }
            restoreAudioFile(path, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008e A[PHI: r2 r12
      0x008e: PHI (r2v5 java.nio.channels.FileChannel) = (r2v3 java.nio.channels.FileChannel), (r2v6 java.nio.channels.FileChannel) binds: [B:21:0x008c, B:28:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x008e: PHI (r12v9 ??) = (r12v7 ??), (r12v10 ??) binds: [B:21:0x008c, B:28:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.FileDescriptor] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void restoreAudioFile(java.lang.String r12, java.lang.String r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.backuprestore.TranslateDataRestorePlugin.restoreAudioFile(java.lang.String, java.lang.String):void");
    }

    private final void restoreSimultaneousHistory() {
        int i10;
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "restoreSimultaneousHistory");
        try {
            String str = this.mSimultaneousHistoryBackupXmlPath;
            if (str == null) {
                r.r("mSimultaneousHistoryBackupXmlPath");
                str = null;
            }
            FileDescriptor fileDescriptor = getFileDescriptor(str, 268435456);
            com.coloros.translate.backuprestore.c cVar = new com.coloros.translate.backuprestore.c();
            r.b(fileDescriptor);
            String strValueOf = String.valueOf(cVar.d(fileDescriptor));
            if (strValueOf.length() == 0) {
                aVar.q(TAG, "restoreSimultaneousHistory content is empty");
                return;
            }
            ArrayList arrayListG = cVar.g(strValueOf);
            if (arrayListG.isEmpty()) {
                aVar.q(TAG, "restoreSimultaneousHistory simultaneousHistoryList is empty");
                return;
            }
            if (this.mIsCancel) {
                aVar.q(TAG, "restoreSimultaneousHistory is cancelled");
                return;
            }
            List listI = i2.a.INSTANCE.f().t().i(arrayListG);
            int i11 = this.mCompleteCount;
            if (listI == null || !listI.isEmpty()) {
                Iterator it = listI.iterator();
                i10 = 0;
                while (it.hasNext()) {
                    if (((int) ((Number) it.next()).longValue()) != -1 && (i10 = i10 + 1) < 0) {
                        o.p();
                    }
                }
            } else {
                i10 = 0;
            }
            setMCompleteCount(i11 + i10);
            int size = listI.size();
            for (int i12 = 0; i12 < size; i12++) {
                if (this.mIsCancel) {
                    c0.f7098a.q(TAG, "restoreSimultaneousHistory is cancelled");
                    return;
                }
                if (((Number) listI.get(i12)).longValue() == -1) {
                    SimultaneousHistory simultaneousHistory = (SimultaneousHistory) arrayListG.get(i12);
                    simultaneousHistory.setId(0L);
                    i2.a.INSTANCE.f().t().i(o.b(simultaneousHistory));
                    setMCompleteCount(this.mCompleteCount + 1);
                }
            }
        } catch (FileNotFoundException e10) {
            c0.f7098a.e(TAG, "restoreSimultaneousHistory FileNotFoundException " + e10.getMessage());
            handleFailed(109, "", String.valueOf(e10.getMessage()));
        } catch (IOException e11) {
            c0.f7098a.e(TAG, "restoreSimultaneousHistory IOException " + e11.getMessage());
            handleFailed(111, "", String.valueOf(e11.getMessage()));
        } catch (SQLException e12) {
            c0.f7098a.e(TAG, "restoreSimultaneousHistory SQLException " + e12.getMessage());
            handleFailed(110, "", String.valueOf(e12.getMessage()));
        } catch (Exception e13) {
            c0.f7098a.e(TAG, "restoreSimultaneousHistory Exception " + e13.getMessage());
            handleFailed(112, "", String.valueOf(e13.getMessage()));
        }
    }

    private final void restoreSimultaneousSentence() {
        int i10;
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "restoreSimultaneousSentence");
        try {
            String str = this.mSimultaneousSentenceBackupXmlPath;
            if (str == null) {
                r.r("mSimultaneousSentenceBackupXmlPath");
                str = null;
            }
            FileDescriptor fileDescriptor = getFileDescriptor(str, 268435456);
            com.coloros.translate.backuprestore.d dVar = new com.coloros.translate.backuprestore.d();
            r.b(fileDescriptor);
            String strValueOf = String.valueOf(dVar.d(fileDescriptor));
            if (strValueOf.length() == 0) {
                aVar.q(TAG, "restoreSimultaneousSentence content is empty");
                return;
            }
            ArrayList arrayListG = dVar.g(strValueOf);
            if (arrayListG.isEmpty()) {
                aVar.q(TAG, "restoreSimultaneousSentence simultaneousSentenceList is empty");
                return;
            }
            if (this.mIsCancel) {
                aVar.q(TAG, "restoreSimultaneousSentence is cancelled");
                return;
            }
            List listB = i2.a.INSTANCE.f().u().b(arrayListG);
            int i11 = this.mCompleteCount;
            if (listB == null || !listB.isEmpty()) {
                Iterator it = listB.iterator();
                i10 = 0;
                while (it.hasNext()) {
                    if (((int) ((Number) it.next()).longValue()) != -1 && (i10 = i10 + 1) < 0) {
                        o.p();
                    }
                }
            } else {
                i10 = 0;
            }
            setMCompleteCount(i11 + i10);
            int size = listB.size();
            for (int i12 = 0; i12 < size; i12++) {
                if (this.mIsCancel) {
                    c0.f7098a.q(TAG, "restoreSimultaneousSentence is cancelled");
                    return;
                }
                if (((Number) listB.get(i12)).longValue() == -1) {
                    SimultaneousSentence simultaneousSentence = (SimultaneousSentence) arrayListG.get(i12);
                    simultaneousSentence.setId(0L);
                    i2.a.INSTANCE.f().u().b(o.b(simultaneousSentence));
                    setMCompleteCount(this.mCompleteCount + 1);
                }
            }
        } catch (FileNotFoundException e10) {
            c0.f7098a.e(TAG, "restoreSimultaneousSentence FileNotFoundException " + e10.getMessage());
            handleFailed(113, "", String.valueOf(e10.getMessage()));
        } catch (IOException e11) {
            c0.f7098a.e(TAG, "restoreSimultaneousSentence IOException " + e11.getMessage());
            handleFailed(115, "", String.valueOf(e11.getMessage()));
        } catch (SQLException e12) {
            c0.f7098a.e(TAG, "restoreSimultaneousSentence SQLException " + e12.getMessage());
            handleFailed(114, "", String.valueOf(e12.getMessage()));
        } catch (Exception e13) {
            c0.f7098a.e(TAG, "restoreSimultaneousSentence Exception " + e13.getMessage());
            handleFailed(116, "", String.valueOf(e13.getMessage()));
        }
    }

    private final void restoreTextHistory() {
        int i10;
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "restoreTextHistory");
        try {
            String str = this.mTextHistoryBackupXmlPath;
            if (str == null) {
                r.r("mTextHistoryBackupXmlPath");
                str = null;
            }
            FileDescriptor fileDescriptor = getFileDescriptor(str, 268435456);
            e eVar = new e();
            r.b(fileDescriptor);
            String strValueOf = String.valueOf(eVar.d(fileDescriptor));
            if (strValueOf.length() == 0) {
                aVar.q(TAG, "restoreTextHistory content is empty");
                return;
            }
            ArrayList arrayListG = eVar.g(strValueOf);
            if (arrayListG.isEmpty()) {
                aVar.q(TAG, "restoreTextHistory textHistoryList is empty");
                return;
            }
            if (this.mIsCancel) {
                aVar.q(TAG, "restoreTextHistory is cancelled");
                return;
            }
            List listG = i2.a.INSTANCE.f().v().g(arrayListG);
            int i11 = this.mCompleteCount;
            if (listG == null || !listG.isEmpty()) {
                Iterator it = listG.iterator();
                i10 = 0;
                while (it.hasNext()) {
                    if (((int) ((Number) it.next()).longValue()) != -1 && (i10 = i10 + 1) < 0) {
                        o.p();
                    }
                }
            } else {
                i10 = 0;
            }
            setMCompleteCount(i11 + i10);
            int size = listG.size();
            for (int i12 = 0; i12 < size; i12++) {
                if (this.mIsCancel) {
                    c0.f7098a.q(TAG, "restoreTextHistory is cancelled");
                    return;
                }
                if (((Number) listG.get(i12)).longValue() == -1) {
                    Object obj = arrayListG.get(i12);
                    r.d(obj, "get(...)");
                    TextHistory textHistory = (TextHistory) obj;
                    textHistory.setId(0L);
                    i2.a.INSTANCE.f().v().g(o.b(textHistory));
                    setMCompleteCount(this.mCompleteCount + 1);
                }
            }
        } catch (FileNotFoundException e10) {
            c0.f7098a.e(TAG, "restoreTextHistory FileNotFoundException " + e10.getMessage());
            handleFailed(117, "", String.valueOf(e10.getMessage()));
        } catch (IOException e11) {
            c0.f7098a.e(TAG, "restoreTextHistory IOException " + e11.getMessage());
            handleFailed(119, "", String.valueOf(e11.getMessage()));
        } catch (SQLException e12) {
            c0.f7098a.e(TAG, "restoreTextHistory SQLException " + e12.getMessage());
            handleFailed(118, "", String.valueOf(e12.getMessage()));
        } catch (Exception e13) {
            c0.f7098a.e(TAG, "restoreTextHistory Exception " + e13.getMessage());
            handleFailed(120, "", String.valueOf(e13.getMessage()));
        }
    }

    private final void setMCompleteCount(int i10) {
        if (this.mCompleteCount != i10) {
            this.mIsChangeCompleteCount = true;
            if (this.mUpdateRestoreProgressIntervalTime >= 120000) {
                updateRestoreProgress();
            }
        }
        this.mCompleteCount = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRestoreProgress() {
        ProgressHelper.putMaxCount(getMProgress(), this.mMaxCount);
        ProgressHelper.putCompletedCount(getMProgress(), this.mCompleteCount);
        BRPluginHandler bRPluginHandler = this.mBRPluginHandler;
        if (bRPluginHandler != null) {
            bRPluginHandler.updateProgress(getMProgress());
        }
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
    public void onCreate(Context context, BRPluginHandler bRPluginHandler, BREngineConfig config) {
        r.e(context, "context");
        r.e(config, "config");
        super.onCreate(context, bRPluginHandler, config);
        c0.f7098a.d(TAG, "onCreate");
        this.mBRPluginHandler = bRPluginHandler;
        String restoreRootPath = config.getRestoreRootPath();
        String str = File.separator;
        String str2 = restoreRootPath + str + "Translation";
        this.mTranslateBackupBasicPath = str2;
        String str3 = null;
        if (str2 == null) {
            r.r("mTranslateBackupBasicPath");
            str2 = null;
        }
        this.mBackupInfoXmlPath = str2 + str + "backup_info.xml";
        String str4 = this.mTranslateBackupBasicPath;
        if (str4 == null) {
            r.r("mTranslateBackupBasicPath");
            str4 = null;
        }
        this.mTextHistoryBackupXmlPath = str4 + str + "text_history_backup.xml";
        String str5 = this.mTranslateBackupBasicPath;
        if (str5 == null) {
            r.r("mTranslateBackupBasicPath");
            str5 = null;
        }
        this.mSimultaneousHistoryBackupXmlPath = str5 + str + "simultaneous_history_backup.xml";
        String str6 = this.mTranslateBackupBasicPath;
        if (str6 == null) {
            r.r("mTranslateBackupBasicPath");
            str6 = null;
        }
        this.mSimultaneousSentenceBackupXmlPath = str6 + str + "simultaneous_sentence_backup.xml";
        String str7 = this.mTranslateBackupBasicPath;
        if (str7 == null) {
            r.r("mTranslateBackupBasicPath");
        } else {
            str3 = str7;
        }
        this.mSimultaneousAudioFilePath = str3 + str + "AudioFileData";
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onDestroy(Bundle bundle) {
        r.e(bundle, "bundle");
        if (this.mMaxCount == this.mCompleteCount) {
            this.mIsRestoreSuccess = true;
        }
        putResult(bundle);
        putFailedInfo(bundle);
        getMRestoreHandler().f();
        c0.f7098a.d(TAG, "onDestroy bundle=" + bundle);
        return bundle;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onPause(Bundle bundle) {
        c0.f7098a.d(TAG, "onPause");
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onPrepare(Bundle bundle) {
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "onPrepare");
        String str = this.mBackupInfoXmlPath;
        if (str == null) {
            r.r("mBackupInfoXmlPath");
            str = null;
        }
        FileDescriptor fileDescriptor = getFileDescriptor(str, 268435456);
        com.coloros.translate.backuprestore.a aVar2 = new com.coloros.translate.backuprestore.a();
        r.b(fileDescriptor);
        String strValueOf = String.valueOf(aVar2.d(fileDescriptor));
        if (strValueOf.length() > 0) {
            Bundle bundleH = aVar2.h(strValueOf);
            this.mBackupInfoBundle = bundleH;
            r.b(bundleH);
            this.mMaxCount = bundleH.getInt("maxCount");
        }
        Bundle bundle2 = new Bundle();
        bundle2.putInt(ProgressHelper.MAX_COUNT, this.mMaxCount);
        aVar.d(TAG, "onPrepare prepareBundle=" + bundle2);
        return bundle2;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public Bundle onPreview(Bundle bundle) {
        c0.f7098a.d(TAG, "onPreview");
        return null;
    }

    @Override // com.oplus.backup.sdk.component.plugin.IBRPlugin
    public void onRestore(Bundle bundle) throws Throwable {
        c0.a aVar = c0.f7098a;
        aVar.d(TAG, "onRestore");
        int i10 = this.mMaxCount;
        if (i10 <= 0 || this.mIsCancel || this.mCompleteCount >= i10) {
            return;
        }
        int iD = i2.a.INSTANCE.d();
        Bundle bundle2 = this.mBackupInfoBundle;
        Integer numValueOf = bundle2 != null ? Integer.valueOf(bundle2.getInt("databaseVersion")) : null;
        r.b(numValueOf);
        if (iD < numValueOf.intValue()) {
            aVar.q(TAG, "inconsistent database version numbers");
            handleFailed(121, "", "database versions is inconsistent");
            return;
        }
        getMRestoreHandler().d(getMUpdateRestoreProgress(), this.mUpdateRestoreProgressIntervalTime);
        restoreAudioData();
        restoreTextHistory();
        restoreSimultaneousHistory();
        restoreSimultaneousSentence();
        getMRestoreHandler().g(getMUpdateRestoreProgress());
        updateRestoreProgress();
    }
}
