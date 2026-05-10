package i2;

import android.database.Cursor;
import androidx.room.k;
import androidx.room.n;
import com.coloros.translate.repository.local.Conversation;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c implements i2.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.room.h f12521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.c f12522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.b f12523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.b f12524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f12525e;

    class a extends androidx.room.c {
        a(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR REPLACE INTO `conversationHistory` (`conversationId`,`fromText`,`toText`,`fromLanguage`,`toLanguage`,`timestamp`,`state`,`isLeft`,`expandField1`,`expandField2`,`expandField3`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, Conversation conversation) {
            fVar.e0(1, conversation.getId());
            if (conversation.getFromText() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, conversation.getFromText());
            }
            if (conversation.getToText() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, conversation.getToText());
            }
            if (conversation.getFromLanguage() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, conversation.getFromLanguage());
            }
            if (conversation.getToLanguage() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, conversation.getToLanguage());
            }
            fVar.e0(6, conversation.getTimestamp());
            fVar.e0(7, conversation.getState());
            fVar.e0(8, conversation.isLeft() ? 1L : 0L);
            if (conversation.getExpandField1() == null) {
                fVar.M(9);
            } else {
                fVar.z(9, conversation.getExpandField1());
            }
            if (conversation.getExpandField2() == null) {
                fVar.M(10);
            } else {
                fVar.z(10, conversation.getExpandField2());
            }
            if (conversation.getExpandField3() == null) {
                fVar.M(11);
            } else {
                fVar.z(11, conversation.getExpandField3());
            }
        }
    }

    class b extends androidx.room.b {
        b(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM `conversationHistory` WHERE `conversationId` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, Conversation conversation) {
            fVar.e0(1, conversation.getId());
        }
    }

    /* JADX INFO: renamed from: i2.c$c, reason: collision with other inner class name */
    class C0152c extends androidx.room.b {
        C0152c(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "UPDATE OR REPLACE `conversationHistory` SET `conversationId` = ?,`fromText` = ?,`toText` = ?,`fromLanguage` = ?,`toLanguage` = ?,`timestamp` = ?,`state` = ?,`isLeft` = ?,`expandField1` = ?,`expandField2` = ?,`expandField3` = ? WHERE `conversationId` = ?";
        }

        @Override // androidx.room.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(s0.f fVar, Conversation conversation) {
            fVar.e0(1, conversation.getId());
            if (conversation.getFromText() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, conversation.getFromText());
            }
            if (conversation.getToText() == null) {
                fVar.M(3);
            } else {
                fVar.z(3, conversation.getToText());
            }
            if (conversation.getFromLanguage() == null) {
                fVar.M(4);
            } else {
                fVar.z(4, conversation.getFromLanguage());
            }
            if (conversation.getToLanguage() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, conversation.getToLanguage());
            }
            fVar.e0(6, conversation.getTimestamp());
            fVar.e0(7, conversation.getState());
            fVar.e0(8, conversation.isLeft() ? 1L : 0L);
            if (conversation.getExpandField1() == null) {
                fVar.M(9);
            } else {
                fVar.z(9, conversation.getExpandField1());
            }
            if (conversation.getExpandField2() == null) {
                fVar.M(10);
            } else {
                fVar.z(10, conversation.getExpandField2());
            }
            if (conversation.getExpandField3() == null) {
                fVar.M(11);
            } else {
                fVar.z(11, conversation.getExpandField3());
            }
            fVar.e0(12, conversation.getId());
        }
    }

    class d extends n {
        d(androidx.room.h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE FROM conversationHistory";
        }
    }

    public c(androidx.room.h hVar) {
        this.f12521a = hVar;
        this.f12522b = new a(hVar);
        this.f12523c = new b(hVar);
        this.f12524d = new C0152c(hVar);
        this.f12525e = new d(hVar);
    }

    @Override // i2.b
    public void a(Conversation conversation) {
        this.f12521a.b();
        this.f12521a.c();
        try {
            this.f12523c.h(conversation);
            this.f12521a.r();
        } finally {
            this.f12521a.g();
        }
    }

    @Override // i2.b
    public long b(Conversation conversation) {
        this.f12521a.b();
        this.f12521a.c();
        try {
            long j10 = this.f12522b.j(conversation);
            this.f12521a.r();
            return j10;
        } finally {
            this.f12521a.g();
        }
    }

    @Override // i2.b
    public List c(int i10, int i11) {
        k kVarK = k.k("SELECT * FROM conversationHistory ORDER BY timestamp LIMIT ? OFFSET ?", 2);
        kVarK.e0(1, i11);
        kVarK.e0(2, i10);
        this.f12521a.b();
        Cursor cursorB = p0.c.b(this.f12521a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "conversationId");
            int iB2 = p0.b.b(cursorB, "fromText");
            int iB3 = p0.b.b(cursorB, "toText");
            int iB4 = p0.b.b(cursorB, ASRInputSlot.KEY_FROM_LANGUAGE);
            int iB5 = p0.b.b(cursorB, "toLanguage");
            int iB6 = p0.b.b(cursorB, RealTimeAsrInputSlot.KEY_TIMESTAMP);
            int iB7 = p0.b.b(cursorB, "state");
            int iB8 = p0.b.b(cursorB, "isLeft");
            int iB9 = p0.b.b(cursorB, "expandField1");
            int iB10 = p0.b.b(cursorB, "expandField2");
            int iB11 = p0.b.b(cursorB, "expandField3");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(new Conversation(cursorB.getLong(iB), cursorB.getString(iB2), cursorB.getString(iB3), cursorB.getString(iB4), cursorB.getString(iB5), cursorB.getLong(iB6), cursorB.getInt(iB7), cursorB.getInt(iB8) != 0, cursorB.getString(iB9), cursorB.getString(iB10), cursorB.getString(iB11)));
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }

    @Override // i2.b
    public void d(Conversation conversation) {
        this.f12521a.b();
        this.f12521a.c();
        try {
            this.f12524d.h(conversation);
            this.f12521a.r();
        } finally {
            this.f12521a.g();
        }
    }

    @Override // i2.b
    public void e(List list) {
        this.f12521a.b();
        this.f12521a.c();
        try {
            this.f12523c.i(list);
            this.f12521a.r();
        } finally {
            this.f12521a.g();
        }
    }

    @Override // i2.b
    public void f() {
        this.f12521a.b();
        s0.f fVarA = this.f12525e.a();
        this.f12521a.c();
        try {
            fVarA.H();
            this.f12521a.r();
        } finally {
            this.f12521a.g();
            this.f12525e.f(fVarA);
        }
    }
}
