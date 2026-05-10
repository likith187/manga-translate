package i2;

import android.database.Cursor;
import androidx.room.k;
import androidx.room.n;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e implements i2.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.room.h f12530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.c f12531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.c f12532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.b f12533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.room.b f12534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n f12535f;

    class a extends androidx.room.c {
        a(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR REPLACE INTO `simultaneousHistory` (`sid`,`timestamp`,`noteId`,`noteTitle`,`audioFile`,`simpleText`,`audioTime`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousHistory simultaneousHistory) {
            fVar.e0(1, simultaneousHistory.getId());
            fVar.e0(2, simultaneousHistory.getTimestamp());
            fVar.e0(3, simultaneousHistory.getNoteId());
            if (simultaneousHistory.getNoteTitle() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousHistory.getNoteTitle());
            }
            if (simultaneousHistory.getAudioFile() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousHistory.getAudioFile());
            }
            if (simultaneousHistory.getSimpleText() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousHistory.getSimpleText());
            }
            fVar.e0(7, simultaneousHistory.getAudioTime());
        }
    }

    class b extends androidx.room.c {
        b(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR IGNORE INTO `simultaneousHistory` (`sid`,`timestamp`,`noteId`,`noteTitle`,`audioFile`,`simpleText`,`audioTime`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousHistory simultaneousHistory) {
            fVar.e0(1, simultaneousHistory.getId());
            fVar.e0(2, simultaneousHistory.getTimestamp());
            fVar.e0(3, simultaneousHistory.getNoteId());
            if (simultaneousHistory.getNoteTitle() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousHistory.getNoteTitle());
            }
            if (simultaneousHistory.getAudioFile() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousHistory.getAudioFile());
            }
            if (simultaneousHistory.getSimpleText() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousHistory.getSimpleText());
            }
            fVar.e0(7, simultaneousHistory.getAudioTime());
        }
    }

    class c extends androidx.room.b {
        c(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM `simultaneousHistory` WHERE `sid` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousHistory simultaneousHistory) {
            fVar.e0(1, simultaneousHistory.getId());
        }
    }

    class d extends androidx.room.b {
        d(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "UPDATE OR REPLACE `simultaneousHistory` SET `sid` = ?,`timestamp` = ?,`noteId` = ?,`noteTitle` = ?,`audioFile` = ?,`simpleText` = ?,`audioTime` = ? WHERE `sid` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, SimultaneousHistory simultaneousHistory) {
            fVar.e0(1, simultaneousHistory.getId());
            fVar.e0(2, simultaneousHistory.getTimestamp());
            fVar.e0(3, simultaneousHistory.getNoteId());
            if (simultaneousHistory.getNoteTitle() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, simultaneousHistory.getNoteTitle());
            }
            if (simultaneousHistory.getAudioFile() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, simultaneousHistory.getAudioFile());
            }
            if (simultaneousHistory.getSimpleText() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, simultaneousHistory.getSimpleText());
            }
            fVar.e0(7, simultaneousHistory.getAudioTime());
            fVar.e0(8, simultaneousHistory.getId());
        }
    }

    /* JADX INFO: renamed from: i2.e$e, reason: collision with other inner class name */
    class C0153e extends n {
        C0153e(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM simultaneousHistory";
        }
    }

    public e(androidx.room.h hVar) {
        this.f12530a = hVar;
        this.f12531b = new a(hVar);
        this.f12532c = new b(hVar);
        this.f12533d = new c(hVar);
        this.f12534e = new d(hVar);
        this.f12535f = new C0153e(hVar);
    }

    @Override // i2.d
    public void a(SimultaneousHistory simultaneousHistory) {
        this.f12530a.b();
        this.f12530a.c();
        try {
            this.f12534e.h(simultaneousHistory);
            this.f12530a.r();
        } finally {
            this.f12530a.g();
        }
    }

    @Override // i2.d
    public SimultaneousHistory b(long j10) {
        k kVarK = k.k("SELECT * FROM simultaneousHistory WHERE noteId = ? ORDER BY timestamp", 1);
        kVarK.e0(1, j10);
        this.f12530a.b();
        SimultaneousHistory simultaneousHistory = null;
        Cursor cursorB = p0.c.b(this.f12530a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB3 = p0.b.b(cursorB, "noteId");
            int iB4 = p0.b.b(cursorB, "noteTitle");
            int iB5 = p0.b.b(cursorB, TranslationClient.PARAM_KEY_AUDIO_FILE);
            int iB6 = p0.b.b(cursorB, "simpleText");
            int iB7 = p0.b.b(cursorB, "audioTime");
            if (cursorB.moveToFirst()) {
                simultaneousHistory = new SimultaneousHistory();
                simultaneousHistory.setId(cursorB.getLong(iB));
                simultaneousHistory.setTimestamp(cursorB.getLong(iB2));
                simultaneousHistory.setNoteId(cursorB.getLong(iB3));
                simultaneousHistory.setNoteTitle(cursorB.getString(iB4));
                simultaneousHistory.setAudioFile(cursorB.getString(iB5));
                simultaneousHistory.setSimpleText(cursorB.getString(iB6));
                simultaneousHistory.setAudioTime(cursorB.getLong(iB7));
            }
            return simultaneousHistory;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.d
    public void c(List list) {
        this.f12530a.b();
        this.f12530a.c();
        try {
            this.f12533d.i(list);
            this.f12530a.r();
        } finally {
            this.f12530a.g();
        }
    }

    @Override // i2.d
    public List d(int i10, int i11) {
        k kVarK = k.k("SELECT * FROM simultaneousHistory ORDER BY timestamp DESC LIMIT ? OFFSET ?", 2);
        kVarK.e0(1, i11);
        kVarK.e0(2, i10);
        this.f12530a.b();
        Cursor cursorB = p0.c.b(this.f12530a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB3 = p0.b.b(cursorB, "noteId");
            int iB4 = p0.b.b(cursorB, "noteTitle");
            int iB5 = p0.b.b(cursorB, TranslationClient.PARAM_KEY_AUDIO_FILE);
            int iB6 = p0.b.b(cursorB, "simpleText");
            int iB7 = p0.b.b(cursorB, "audioTime");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                SimultaneousHistory simultaneousHistory = new SimultaneousHistory();
                simultaneousHistory.setId(cursorB.getLong(iB));
                simultaneousHistory.setTimestamp(cursorB.getLong(iB2));
                simultaneousHistory.setNoteId(cursorB.getLong(iB3));
                simultaneousHistory.setNoteTitle(cursorB.getString(iB4));
                simultaneousHistory.setAudioFile(cursorB.getString(iB5));
                simultaneousHistory.setSimpleText(cursorB.getString(iB6));
                simultaneousHistory.setAudioTime(cursorB.getLong(iB7));
                arrayList.add(simultaneousHistory);
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.d
    public int e() {
        k kVarK = k.k("SELECT COUNT(*) FROM simultaneousHistory", 0);
        this.f12530a.b();
        Cursor cursorB = p0.c.b(this.f12530a, kVarK, false, null);
        try {
            return cursorB.moveToFirst() ? cursorB.getInt(0) : 0;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.d
    public long f(SimultaneousHistory simultaneousHistory) {
        this.f12530a.b();
        this.f12530a.c();
        try {
            long j10 = this.f12531b.j(simultaneousHistory);
            this.f12530a.r();
            return j10;
        } finally {
            this.f12530a.g();
        }
    }

    @Override // i2.d
    public void g(SimultaneousHistory simultaneousHistory) {
        this.f12530a.b();
        this.f12530a.c();
        try {
            this.f12533d.h(simultaneousHistory);
            this.f12530a.r();
        } finally {
            this.f12530a.g();
        }
    }

    @Override // i2.d
    public List h() {
        k kVarK = k.k("SELECT * FROM simultaneousHistory", 0);
        this.f12530a.b();
        Cursor cursorB = p0.c.b(this.f12530a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "sid");
            int iB2 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB3 = p0.b.b(cursorB, "noteId");
            int iB4 = p0.b.b(cursorB, "noteTitle");
            int iB5 = p0.b.b(cursorB, TranslationClient.PARAM_KEY_AUDIO_FILE);
            int iB6 = p0.b.b(cursorB, "simpleText");
            int iB7 = p0.b.b(cursorB, "audioTime");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                SimultaneousHistory simultaneousHistory = new SimultaneousHistory();
                simultaneousHistory.setId(cursorB.getLong(iB));
                simultaneousHistory.setTimestamp(cursorB.getLong(iB2));
                simultaneousHistory.setNoteId(cursorB.getLong(iB3));
                simultaneousHistory.setNoteTitle(cursorB.getString(iB4));
                simultaneousHistory.setAudioFile(cursorB.getString(iB5));
                simultaneousHistory.setSimpleText(cursorB.getString(iB6));
                simultaneousHistory.setAudioTime(cursorB.getLong(iB7));
                arrayList.add(simultaneousHistory);
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.d
    public List i(List list) {
        this.f12530a.b();
        this.f12530a.c();
        try {
            List listK = this.f12532c.k(list);
            this.f12530a.r();
            return listK;
        } finally {
            this.f12530a.g();
        }
    }
}
