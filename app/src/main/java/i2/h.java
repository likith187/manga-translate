package i2;

import android.database.Cursor;
import androidx.room.k;
import androidx.room.n;
import com.coloros.translate.repository.local.SimultaneousSentence;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.room.h f12541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.c f12542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.c f12543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.b f12544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.room.b f12545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n f12546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n f12547g;

    class a extends androidx.room.c {
        a(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR REPLACE INTO `simultaneousSentence` (`sid`,`msgId`,`recordId`,`fromText`,`toText`,`fromLanguage`,`toLanguage`,`startTimeOffset`,`endTimeOffset`,`timestamp`,`noteId`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousSentence simultaneousSentence) {
            fVar.e0(1, simultaneousSentence.getId());
            fVar.e0(2, simultaneousSentence.getMsgId());
            if (simultaneousSentence.getRecordId() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, simultaneousSentence.getRecordId());
            }
            if (simultaneousSentence.getFromText() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousSentence.getFromText());
            }
            if (simultaneousSentence.getToText() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousSentence.getToText());
            }
            if (simultaneousSentence.getFromLanguage() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousSentence.getFromLanguage());
            }
            if (simultaneousSentence.getToLanguage() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, simultaneousSentence.getToLanguage());
            }
            fVar.e0(8, simultaneousSentence.getStartTimeOffset());
            fVar.e0(9, simultaneousSentence.getEndTimeOffset());
            fVar.e0(10, simultaneousSentence.getTimestamp());
            fVar.e0(11, simultaneousSentence.getNoteId());
        }
    }

    class b extends androidx.room.c {
        b(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR IGNORE INTO `simultaneousSentence` (`sid`,`msgId`,`recordId`,`fromText`,`toText`,`fromLanguage`,`toLanguage`,`startTimeOffset`,`endTimeOffset`,`timestamp`,`noteId`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousSentence simultaneousSentence) {
            fVar.e0(1, simultaneousSentence.getId());
            fVar.e0(2, simultaneousSentence.getMsgId());
            if (simultaneousSentence.getRecordId() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, simultaneousSentence.getRecordId());
            }
            if (simultaneousSentence.getFromText() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousSentence.getFromText());
            }
            if (simultaneousSentence.getToText() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousSentence.getToText());
            }
            if (simultaneousSentence.getFromLanguage() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousSentence.getFromLanguage());
            }
            if (simultaneousSentence.getToLanguage() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, simultaneousSentence.getToLanguage());
            }
            fVar.e0(8, simultaneousSentence.getStartTimeOffset());
            fVar.e0(9, simultaneousSentence.getEndTimeOffset());
            fVar.e0(10, simultaneousSentence.getTimestamp());
            fVar.e0(11, simultaneousSentence.getNoteId());
        }
    }

    class c extends androidx.room.b {
        c(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM `simultaneousSentence` WHERE `sid` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousSentence simultaneousSentence) {
            fVar.e0(1, simultaneousSentence.getId());
        }
    }

    class d extends androidx.room.b {
        d(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "UPDATE OR REPLACE `simultaneousSentence` SET `sid` = ?,`msgId` = ?,`recordId` = ?,`fromText` = ?,`toText` = ?,`fromLanguage` = ?,`toLanguage` = ?,`startTimeOffset` = ?,`endTimeOffset` = ?,`timestamp` = ?,`noteId` = ? WHERE `sid` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousSentence simultaneousSentence) {
            fVar.e0(1, simultaneousSentence.getId());
            fVar.e0(2, simultaneousSentence.getMsgId());
            if (simultaneousSentence.getRecordId() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, simultaneousSentence.getRecordId());
            }
            if (simultaneousSentence.getFromText() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousSentence.getFromText());
            }
            if (simultaneousSentence.getToText() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousSentence.getToText());
            }
            if (simultaneousSentence.getFromLanguage() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousSentence.getFromLanguage());
            }
            if (simultaneousSentence.getToLanguage() == null) {
                fVar.M(7);
            } else {
                fVar.z(7, simultaneousSentence.getToLanguage());
            }
            fVar.e0(8, simultaneousSentence.getStartTimeOffset());
            fVar.e0(9, simultaneousSentence.getEndTimeOffset());
            fVar.e0(10, simultaneousSentence.getTimestamp());
            fVar.e0(11, simultaneousSentence.getNoteId());
            fVar.e0(12, simultaneousSentence.getId());
        }
    }

    class e extends n {
        e(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM simultaneousSentence WHERE noteId = ?";
        }
    }

    class f extends n {
        f(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM simultaneousSentence";
        }
    }

    public h(androidx.room.h hVar) {
        this.f12541a = hVar;
        this.f12542b = new a(hVar);
        this.f12543c = new b(hVar);
        this.f12544d = new c(hVar);
        this.f12545e = new d(hVar);
        this.f12546f = new e(hVar);
        this.f12547g = new f(hVar);
    }

    @Override // i2.g
    public void a(List list) {
        this.f12541a.b();
        this.f12541a.c();
        try {
            this.f12542b.h(list);
            this.f12541a.r();
        } finally {
            this.f12541a.g();
        }
    }

    @Override // i2.g
    public List b(List list) {
        this.f12541a.b();
        this.f12541a.c();
        try {
            List listK = this.f12543c.k(list);
            this.f12541a.r();
            return listK;
        } finally {
            this.f12541a.g();
        }
    }

    @Override // i2.g
    public int c() {
        k kVarK = k.k("SELECT COUNT(*) FROM simultaneousSentence", 0);
        this.f12541a.b();
        Cursor cursorB = p0.c.b(this.f12541a, kVarK, false, null);
        try {
            return cursorB.moveToFirst() ? cursorB.getInt(0) : 0;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.g
    public List d(long j10, int i10, int i11) {
        k kVarK = k.k("SELECT * FROM simultaneousSentence WHERE noteId = ? ORDER BY timestamp LIMIT ? OFFSET ?", 3);
        kVarK.e0(1, j10);
        kVarK.e0(2, i11);
        kVarK.e0(3, i10);
        this.f12541a.b();
        Cursor cursorB = p0.c.b(this.f12541a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_MESSAGE_ID);
            int iB3 = p0.b.b(cursorB, ASRInputSlot.KEY_FILE_RECORDID);
            int iB4 = p0.b.b(cursorB, "fromText");
            int iB5 = p0.b.b(cursorB, "toText");
            int iB6 = p0.b.b(cursorB, ASRInputSlot.KEY_FROM_LANGUAGE);
            int iB7 = p0.b.b(cursorB, "toLanguage");
            int iB8 = p0.b.b(cursorB, "startTimeOffset");
            int iB9 = p0.b.b(cursorB, "endTimeOffset");
            int iB10 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB11 = p0.b.b(cursorB, "noteId");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                SimultaneousSentence simultaneousSentence = new SimultaneousSentence();
                ArrayList arrayList2 = arrayList;
                simultaneousSentence.setId(cursorB.getLong(iB));
                simultaneousSentence.setMsgId(cursorB.getLong(iB2));
                simultaneousSentence.setRecordId(cursorB.getString(iB3));
                simultaneousSentence.setFromText(cursorB.getString(iB4));
                simultaneousSentence.setToText(cursorB.getString(iB5));
                simultaneousSentence.setFromLanguage(cursorB.getString(iB6));
                simultaneousSentence.setToLanguage(cursorB.getString(iB7));
                simultaneousSentence.setStartTimeOffset(cursorB.getLong(iB8));
                simultaneousSentence.setEndTimeOffset(cursorB.getLong(iB9));
                simultaneousSentence.setTimestamp(cursorB.getLong(iB10));
                iB11 = iB11;
                int i12 = iB2;
                int i13 = iB3;
                simultaneousSentence.setNoteId(cursorB.getLong(iB11));
                arrayList2.add(simultaneousSentence);
                iB3 = i13;
                arrayList = arrayList2;
                iB2 = i12;
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.g
    public void e(long j10) {
        this.f12541a.b();
        s0.f fVarA = this.f12546f.a();
        fVarA.e0(1, j10);
        this.f12541a.c();
        try {
            fVarA.H();
            this.f12541a.r();
        } finally {
            this.f12541a.g();
            this.f12546f.f(fVarA);
        }
    }

    @Override // i2.g
    public List f(long j10) {
        k kVarK = k.k("SELECT * FROM simultaneousSentence WHERE noteId = ? ORDER BY timestamp", 1);
        kVarK.e0(1, j10);
        this.f12541a.b();
        Cursor cursorB = p0.c.b(this.f12541a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_MESSAGE_ID);
            int iB3 = p0.b.b(cursorB, ASRInputSlot.KEY_FILE_RECORDID);
            int iB4 = p0.b.b(cursorB, "fromText");
            int iB5 = p0.b.b(cursorB, "toText");
            int iB6 = p0.b.b(cursorB, ASRInputSlot.KEY_FROM_LANGUAGE);
            int iB7 = p0.b.b(cursorB, "toLanguage");
            int iB8 = p0.b.b(cursorB, "startTimeOffset");
            int iB9 = p0.b.b(cursorB, "endTimeOffset");
            int iB10 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB11 = p0.b.b(cursorB, "noteId");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                SimultaneousSentence simultaneousSentence = new SimultaneousSentence();
                ArrayList arrayList2 = arrayList;
                simultaneousSentence.setId(cursorB.getLong(iB));
                simultaneousSentence.setMsgId(cursorB.getLong(iB2));
                simultaneousSentence.setRecordId(cursorB.getString(iB3));
                simultaneousSentence.setFromText(cursorB.getString(iB4));
                simultaneousSentence.setToText(cursorB.getString(iB5));
                simultaneousSentence.setFromLanguage(cursorB.getString(iB6));
                simultaneousSentence.setToLanguage(cursorB.getString(iB7));
                simultaneousSentence.setStartTimeOffset(cursorB.getLong(iB8));
                simultaneousSentence.setEndTimeOffset(cursorB.getLong(iB9));
                simultaneousSentence.setTimestamp(cursorB.getLong(iB10));
                iB11 = iB11;
                int i10 = iB2;
                int i11 = iB3;
                simultaneousSentence.setNoteId(cursorB.getLong(iB11));
                arrayList2.add(simultaneousSentence);
                iB3 = i11;
                arrayList = arrayList2;
                iB2 = i10;
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.g
    public List g() {
        k kVarK = k.k("SELECT * FROM simultaneousSentence", 0);
        this.f12541a.b();
        Cursor cursorB = p0.c.b(this.f12541a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_MESSAGE_ID);
            int iB3 = p0.b.b(cursorB, ASRInputSlot.KEY_FILE_RECORDID);
            int iB4 = p0.b.b(cursorB, "fromText");
            int iB5 = p0.b.b(cursorB, "toText");
            int iB6 = p0.b.b(cursorB, ASRInputSlot.KEY_FROM_LANGUAGE);
            int iB7 = p0.b.b(cursorB, "toLanguage");
            int iB8 = p0.b.b(cursorB, "startTimeOffset");
            int iB9 = p0.b.b(cursorB, "endTimeOffset");
            int iB10 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB11 = p0.b.b(cursorB, "noteId");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                SimultaneousSentence simultaneousSentence = new SimultaneousSentence();
                ArrayList arrayList2 = arrayList;
                simultaneousSentence.setId(cursorB.getLong(iB));
                simultaneousSentence.setMsgId(cursorB.getLong(iB2));
                simultaneousSentence.setRecordId(cursorB.getString(iB3));
                simultaneousSentence.setFromText(cursorB.getString(iB4));
                simultaneousSentence.setToText(cursorB.getString(iB5));
                simultaneousSentence.setFromLanguage(cursorB.getString(iB6));
                simultaneousSentence.setToLanguage(cursorB.getString(iB7));
                simultaneousSentence.setStartTimeOffset(cursorB.getLong(iB8));
                simultaneousSentence.setEndTimeOffset(cursorB.getLong(iB9));
                simultaneousSentence.setTimestamp(cursorB.getLong(iB10));
                iB11 = iB11;
                int i10 = iB2;
                int i11 = iB3;
                simultaneousSentence.setNoteId(cursorB.getLong(iB11));
                arrayList2.add(simultaneousSentence);
                iB3 = i11;
                arrayList = arrayList2;
                iB2 = i10;
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }
}
