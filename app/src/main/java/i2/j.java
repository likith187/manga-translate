package i2;

import android.database.Cursor;
import androidx.room.k;
import androidx.room.n;
import com.coloros.translate.repository.local.TextHistory;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.room.h f12554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.c f12555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.c f12556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.b f12557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.room.b f12558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n f12559f;

    class a extends androidx.room.c {
        a(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR ABORT INTO `text_history` (`oriContent`,`oriLanguageCode`,`resultContent`,`resultLanguageCode`,`timestamp`,`state`,`expandField1`,`expandField2`,`expandField3`,`globalId`,`type`,`updateTimestamp`,`id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0))";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, TextHistory textHistory) {
            if (textHistory.getOriContent() == null) {
                fVar.M(1);
            } else {
                fVar.z(1, textHistory.getOriContent());
            }
            if (textHistory.getOriLanguageCode() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, textHistory.getOriLanguageCode());
            }
            if (textHistory.getResultContent() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, textHistory.getResultContent());
            }
            if (textHistory.getResultLanguageCode() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, textHistory.getResultLanguageCode());
            }
            fVar.e0(5, textHistory.getTimestamp());
            fVar.e0(6, textHistory.getState());
            if (textHistory.getExpandField1() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, textHistory.getExpandField1());
            }
            if (textHistory.getExpandField2() == null) {
                fVar.M(8);
            } else {
                fVar.z(8, textHistory.getExpandField2());
            }
            if (textHistory.getExpandField3() == null) {
                fVar.M(9);
            } else {
                fVar.z(9, textHistory.getExpandField3());
            }
            if (textHistory.getGlobalId() == null) {
                fVar.M(10);
            } else {
                fVar.z(10, textHistory.getGlobalId());
            }
            fVar.e0(11, textHistory.getType());
            fVar.e0(12, textHistory.getUpdateTimestamp());
            fVar.e0(13, textHistory.getId());
        }
    }

    class b extends androidx.room.c {
        b(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR IGNORE INTO `text_history` (`oriContent`,`oriLanguageCode`,`resultContent`,`resultLanguageCode`,`timestamp`,`state`,`expandField1`,`expandField2`,`expandField3`,`globalId`,`type`,`updateTimestamp`,`id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0))";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, TextHistory textHistory) {
            if (textHistory.getOriContent() == null) {
                fVar.M(1);
            } else {
                fVar.z(1, textHistory.getOriContent());
            }
            if (textHistory.getOriLanguageCode() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, textHistory.getOriLanguageCode());
            }
            if (textHistory.getResultContent() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, textHistory.getResultContent());
            }
            if (textHistory.getResultLanguageCode() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, textHistory.getResultLanguageCode());
            }
            fVar.e0(5, textHistory.getTimestamp());
            fVar.e0(6, textHistory.getState());
            if (textHistory.getExpandField1() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, textHistory.getExpandField1());
            }
            if (textHistory.getExpandField2() == null) {
                fVar.M(8);
            } else {
                fVar.z(8, textHistory.getExpandField2());
            }
            if (textHistory.getExpandField3() == null) {
                fVar.M(9);
            } else {
                fVar.z(9, textHistory.getExpandField3());
            }
            if (textHistory.getGlobalId() == null) {
                fVar.M(10);
            } else {
                fVar.z(10, textHistory.getGlobalId());
            }
            fVar.e0(11, textHistory.getType());
            fVar.e0(12, textHistory.getUpdateTimestamp());
            fVar.e0(13, textHistory.getId());
        }
    }

    class c extends androidx.room.b {
        c(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM `text_history` WHERE `id` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, TextHistory textHistory) {
            fVar.e0(1, textHistory.getId());
        }
    }

    class d extends androidx.room.b {
        d(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "UPDATE OR ABORT `text_history` SET `oriContent` = ?,`oriLanguageCode` = ?,`resultContent` = ?,`resultLanguageCode` = ?,`timestamp` = ?,`state` = ?,`expandField1` = ?,`expandField2` = ?,`expandField3` = ?,`globalId` = ?,`type` = ?,`updateTimestamp` = ?,`id` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, TextHistory textHistory) {
            if (textHistory.getOriContent() == null) {
                fVar.M(1);
            } else {
                fVar.z(1, textHistory.getOriContent());
            }
            if (textHistory.getOriLanguageCode() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, textHistory.getOriLanguageCode());
            }
            if (textHistory.getResultContent() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, textHistory.getResultContent());
            }
            if (textHistory.getResultLanguageCode() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, textHistory.getResultLanguageCode());
            }
            fVar.e0(5, textHistory.getTimestamp());
            fVar.e0(6, textHistory.getState());
            if (textHistory.getExpandField1() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, textHistory.getExpandField1());
            }
            if (textHistory.getExpandField2() == null) {
                fVar.M(8);
            } else {
                fVar.z(8, textHistory.getExpandField2());
            }
            if (textHistory.getExpandField3() == null) {
                fVar.M(9);
            } else {
                fVar.z(9, textHistory.getExpandField3());
            }
            if (textHistory.getGlobalId() == null) {
                fVar.M(10);
            } else {
                fVar.z(10, textHistory.getGlobalId());
            }
            fVar.e0(11, textHistory.getType());
            fVar.e0(12, textHistory.getUpdateTimestamp());
            fVar.e0(13, textHistory.getId());
            fVar.e0(14, textHistory.getId());
        }
    }

    class e extends n {
        e(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM text_history";
        }
    }

    public j(androidx.room.h hVar) {
        this.f12554a = hVar;
        this.f12555b = new a(hVar);
        this.f12556c = new b(hVar);
        this.f12557d = new c(hVar);
        this.f12558e = new d(hVar);
        this.f12559f = new e(hVar);
    }

    @Override // i2.i
    public void a() {
        this.f12554a.b();
        s0.f fVarA = this.f12559f.a();
        this.f12554a.c();
        try {
            fVarA.H();
            this.f12554a.r();
        } finally {
            this.f12554a.g();
            this.f12559f.f(fVarA);
        }
    }

    @Override // i2.i
    public List b() throws Throwable {
        k kVar;
        k kVarK = k.k("SELECT * FROM text_history", 0);
        this.f12554a.b();
        Cursor cursorB = p0.c.b(this.f12554a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "oriContent");
            int iB2 = p0.b.b(cursorB, "oriLanguageCode");
            int iB3 = p0.b.b(cursorB, "resultContent");
            int iB4 = p0.b.b(cursorB, "resultLanguageCode");
            int iB5 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB6 = p0.b.b(cursorB, "state");
            int iB7 = p0.b.b(cursorB, "expandField1");
            int iB8 = p0.b.b(cursorB, "expandField2");
            int iB9 = p0.b.b(cursorB, "expandField3");
            int iB10 = p0.b.b(cursorB, "globalId");
            int iB11 = p0.b.b(cursorB, "type");
            int iB12 = p0.b.b(cursorB, "updateTimestamp");
            int iB13 = p0.b.b(cursorB, "id");
            kVar = kVarK;
            try {
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    TextHistory textHistory = new TextHistory(cursorB.getString(iB), cursorB.getString(iB2), cursorB.getString(iB3), cursorB.getString(iB4), cursorB.getLong(iB5), cursorB.getInt(iB6), cursorB.getString(iB7), cursorB.getString(iB8), cursorB.getString(iB9), cursorB.getString(iB10), cursorB.getInt(iB11), cursorB.getLong(iB12));
                    int i10 = iB2;
                    int i11 = iB3;
                    textHistory.setId(cursorB.getLong(iB13));
                    arrayList.add(textHistory);
                    iB2 = i10;
                    iB3 = i11;
                }
                cursorB.close();
                kVar.B();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.B();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarK;
        }
    }

    @Override // i2.i
    public void c(TextHistory textHistory) {
        this.f12554a.b();
        this.f12554a.c();
        try {
            this.f12558e.h(textHistory);
            this.f12554a.r();
        } finally {
            this.f12554a.g();
        }
    }

    @Override // i2.i
    public long d(TextHistory textHistory) {
        this.f12554a.b();
        this.f12554a.c();
        try {
            long j10 = this.f12555b.j(textHistory);
            this.f12554a.r();
            return j10;
        } finally {
            this.f12554a.g();
        }
    }

    @Override // i2.i
    public TextHistory e(String str, String str2) {
        k kVarK = k.k("SELECT * FROM text_history WHERE oriContent = ? AND resultLanguageCode = ?", 2);
        if (str == null) {
            kVarK.M(1);
        } else {
            kVarK.z(1, str);
        }
        if (str2 == null) {
            kVarK.M(2);
        } else {
            kVarK.z(2, str2);
        }
        this.f12554a.b();
        TextHistory textHistory = null;
        Cursor cursorB = p0.c.b(this.f12554a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "oriContent");
            int iB2 = p0.b.b(cursorB, "oriLanguageCode");
            int iB3 = p0.b.b(cursorB, "resultContent");
            int iB4 = p0.b.b(cursorB, "resultLanguageCode");
            int iB5 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB6 = p0.b.b(cursorB, "state");
            int iB7 = p0.b.b(cursorB, "expandField1");
            int iB8 = p0.b.b(cursorB, "expandField2");
            int iB9 = p0.b.b(cursorB, "expandField3");
            int iB10 = p0.b.b(cursorB, "globalId");
            int iB11 = p0.b.b(cursorB, "type");
            int iB12 = p0.b.b(cursorB, "updateTimestamp");
            int iB13 = p0.b.b(cursorB, "id");
            if (cursorB.moveToFirst()) {
                textHistory = new TextHistory(cursorB.getString(iB), cursorB.getString(iB2), cursorB.getString(iB3), cursorB.getString(iB4), cursorB.getLong(iB5), cursorB.getInt(iB6), cursorB.getString(iB7), cursorB.getString(iB8), cursorB.getString(iB9), cursorB.getString(iB10), cursorB.getInt(iB11), cursorB.getLong(iB12));
                textHistory.setId(cursorB.getLong(iB13));
            }
            return textHistory;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.i
    public int f() {
        k kVarK = k.k("SELECT COUNT(*) FROM text_history", 0);
        this.f12554a.b();
        Cursor cursorB = p0.c.b(this.f12554a, kVarK, false, null);
        try {
            return cursorB.moveToFirst() ? cursorB.getInt(0) : 0;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.i
    public List g(List list) {
        this.f12554a.b();
        this.f12554a.c();
        try {
            List listK = this.f12556c.k(list);
            this.f12554a.r();
            return listK;
        } finally {
            this.f12554a.g();
        }
    }

    @Override // i2.i
    public List h() throws Throwable {
        k kVar;
        k kVarK = k.k("SELECT * FROM text_history ORDER BY updateTimestamp DESC LIMIT 0, 100", 0);
        this.f12554a.b();
        Cursor cursorB = p0.c.b(this.f12554a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "oriContent");
            int iB2 = p0.b.b(cursorB, "oriLanguageCode");
            int iB3 = p0.b.b(cursorB, "resultContent");
            int iB4 = p0.b.b(cursorB, "resultLanguageCode");
            int iB5 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB6 = p0.b.b(cursorB, "state");
            int iB7 = p0.b.b(cursorB, "expandField1");
            int iB8 = p0.b.b(cursorB, "expandField2");
            int iB9 = p0.b.b(cursorB, "expandField3");
            int iB10 = p0.b.b(cursorB, "globalId");
            int iB11 = p0.b.b(cursorB, "type");
            int iB12 = p0.b.b(cursorB, "updateTimestamp");
            int iB13 = p0.b.b(cursorB, "id");
            kVar = kVarK;
            try {
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    TextHistory textHistory = new TextHistory(cursorB.getString(iB), cursorB.getString(iB2), cursorB.getString(iB3), cursorB.getString(iB4), cursorB.getLong(iB5), cursorB.getInt(iB6), cursorB.getString(iB7), cursorB.getString(iB8), cursorB.getString(iB9), cursorB.getString(iB10), cursorB.getInt(iB11), cursorB.getLong(iB12));
                    int i10 = iB2;
                    int i11 = iB3;
                    textHistory.setId(cursorB.getLong(iB13));
                    arrayList.add(textHistory);
                    iB2 = i10;
                    iB3 = i11;
                }
                cursorB.close();
                kVar.B();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.B();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarK;
        }
    }

    @Override // i2.i
    public void i(TextHistory textHistory) {
        this.f12554a.b();
        this.f12554a.c();
        try {
            this.f12557d.h(textHistory);
            this.f12554a.r();
        } finally {
            this.f12554a.g();
        }
    }
}
