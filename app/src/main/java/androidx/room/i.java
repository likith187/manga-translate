package androidx.room;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static String a(String str) {
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')";
    }
}
