package i2;

import com.coloros.translate.TranslationApplication;
import com.coloros.translate.repository.local.AppDatabase;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.utils.c0;
import java.util.List;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final C0151a f12519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AppDatabase f12520b;

    /* JADX INFO: renamed from: i2.a$a, reason: collision with other inner class name */
    public static final class C0151a extends o0.a {
        C0151a() {
            super(1, 2);
        }

        @Override // o0.a
        public void a(s0.b database) {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            Object objM59constructorimpl3;
            r.e(database, "database");
            try {
                r.a aVar = n8.r.Companion;
                database.y("CREATE TABLE IF NOT EXISTS simultaneousHistory (sid INTEGER NOT NULL DEFAULT null, timestamp INTEGER NOT NULL DEFAULT null, noteId INTEGER NOT NULL DEFAULT null, noteTitle TEXT NOT NULL DEFAULT null,audioFile TEXT NOT NULL DEFAULT null,simpleText TEXT NOT NULL DEFAULT null,audioTime INTEGER NOT NULL DEFAULT null,PRIMARY KEY(sid))");
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AppDatabaseHelper", "migration 1 to 2 siHistory error:" + thM62exceptionOrNullimpl.getMessage());
            }
            try {
                database.y("CREATE TABLE IF NOT EXISTS simultaneousSentence (sid INTEGER NOT NULL DEFAULT null,msgId INTEGER NOT NULL DEFAULT null, recordId TEXT NOT NULL DEFAULT null, fromText TEXT NOT NULL DEFAULT null,toText TEXT NOT NULL DEFAULT null,fromLanguage TEXT NOT NULL DEFAULT null,toLanguage TEXT NOT NULL DEFAULT null, startTimeOffset INTEGER NOT NULL DEFAULT null,endTimeOffset INTEGER NOT NULL DEFAULT null,noteId INTEGER NOT NULL DEFAULT null,timestamp INTEGER NOT NULL DEFAULT null,PRIMARY KEY(sid))");
                objM59constructorimpl2 = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th2) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("AppDatabaseHelper", "migration 1 to 2 siSentence error:" + thM62exceptionOrNullimpl2.getMessage());
            }
            try {
                database.y("CREATE TABLE IF NOT EXISTS text_history (id INTEGER NOT NULL DEFAULT null,oriContent TEXT NOT NULL DEFAULT null, oriLanguageCode TEXT NOT NULL DEFAULT null, resultContent TEXT NOT NULL DEFAULT null,resultLanguageCode TEXT NOT NULL DEFAULT null,timestamp INTEGER NOT NULL DEFAULT null,state INTEGER NOT NULL DEFAULT null, expandField1 TEXT NOT NULL DEFAULT null,expandField2 TEXT NOT NULL DEFAULT null,expandField3 TEXT NOT NULL DEFAULT null,globalId TEXT NOT NULL DEFAULT null,type INTEGER NOT NULL DEFAULT null,updateTimestamp INTEGER NOT NULL DEFAULT null,PRIMARY KEY(id))");
                objM59constructorimpl3 = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th3) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl3 = n8.r.m59constructorimpl(s.a(th3));
            }
            Throwable thM62exceptionOrNullimpl3 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl3);
            if (thM62exceptionOrNullimpl3 != null) {
                c0.f7098a.e("AppDatabaseHelper", "migration 1 to 2 text history error:" + thM62exceptionOrNullimpl3.getMessage());
            }
            c0.f7098a.i("AppDatabaseHelper", "migration 1 to 2 success");
        }
    }

    static {
        C0151a c0151a = new C0151a();
        f12519a = c0151a;
        androidx.room.h hVarC = androidx.room.g.a(TranslationApplication.f4754b.a(), AppDatabase.class, "conversation-db").a(c0151a).c();
        kotlin.jvm.internal.r.d(hVarC, "build(...)");
        f12520b = (AppDatabase) hVarC;
    }

    private a() {
    }

    public final void a() {
        try {
            f12520b.s().f();
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
        }
    }

    public final void b(Conversation conversation) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        try {
            f12520b.s().a(conversation);
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
        }
    }

    public final void c(List conversationList) {
        kotlin.jvm.internal.r.e(conversationList, "conversationList");
        try {
            f12520b.s().e(conversationList);
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
        }
    }

    public final int d() {
        s0.c cVarI = f12520b.i();
        kotlin.jvm.internal.r.d(cVarI, "getOpenHelper(...)");
        int iL0 = cVarI.b().l0();
        c0.f7098a.d("AppDatabaseHelper", "databaseVersion = " + iL0);
        return iL0;
    }

    public final List e(int i10, int i11) {
        try {
            return f12520b.s().c(i10, i11);
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
            return null;
        }
    }

    public final AppDatabase f() {
        return f12520b;
    }

    public final long g(Conversation conversation) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        c0.f7098a.d("AppDatabaseHelper", "insertConversation");
        try {
            return f12520b.s().b(conversation);
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
            return -1L;
        }
    }

    public final void h(Conversation conversation) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        try {
            f12520b.s().d(conversation);
        } catch (Exception e10) {
            c0.f7098a.e("AppDatabaseHelper", e10.toString());
        }
    }
}
