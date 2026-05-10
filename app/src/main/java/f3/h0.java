package f3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class h0 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f11889c = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f11890f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f11891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a f11892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final a f11893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final List f11894k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11896b;

    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        a aVarB = d0.b();
        f11890f = aVarB;
        a aVarB2 = e0.b();
        f11891h = aVarB2;
        a aVarB3 = f0.b();
        f11892i = aVarB3;
        a aVarB4 = g0.b();
        f11893j = aVarB4;
        f11894k = Arrays.asList(aVarB, aVarB2, aVarB3, aVarB4);
    }

    h0(Context context, String str, int i10) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
        this.f11896b = false;
        this.f11895a = i10;
    }

    private void B(SQLiteDatabase sQLiteDatabase, int i10) {
        c(sQLiteDatabase);
        D(sQLiteDatabase, 0, i10);
    }

    private void D(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        List list = f11894k;
        if (i11 <= list.size()) {
            while (i10 < i11) {
                ((a) f11894k.get(i10)).a(sQLiteDatabase);
                i10++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i10 + " to " + i11 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        if (this.f11896b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    static /* synthetic */ void i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    static /* synthetic */ void k(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    static /* synthetic */ void x(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f11896b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        B(sQLiteDatabase, this.f11895a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        B(sQLiteDatabase, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        c(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        c(sQLiteDatabase);
        D(sQLiteDatabase, i10, i11);
    }
}
