package com.coloros.translate.repository.local;

import androidx.appcompat.app.t;
import androidx.room.h;
import androidx.room.j;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import i2.b;
import i2.d;
import i2.g;
import i2.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import p0.c;
import p0.e;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile b f5444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile d f5445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile g f5446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile i f5447o;

    class a extends j.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.j.a
        public void a(s0.b bVar) {
            bVar.y("CREATE TABLE IF NOT EXISTS `conversationHistory` (`conversationId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `fromText` TEXT NOT NULL, `toText` TEXT NOT NULL, `fromLanguage` TEXT NOT NULL, `toLanguage` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` INTEGER NOT NULL, `isLeft` INTEGER NOT NULL, `expandField1` TEXT NOT NULL, `expandField2` TEXT NOT NULL, `expandField3` TEXT NOT NULL)");
            bVar.y("CREATE UNIQUE INDEX IF NOT EXISTS `index_conversationHistory_timestamp` ON `conversationHistory` (`timestamp`)");
            bVar.y("CREATE TABLE IF NOT EXISTS `simultaneousHistory` (`sid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `noteId` INTEGER NOT NULL, `noteTitle` TEXT NOT NULL, `audioFile` TEXT NOT NULL, `simpleText` TEXT NOT NULL, `audioTime` INTEGER NOT NULL)");
            bVar.y("CREATE TABLE IF NOT EXISTS `simultaneousSentence` (`sid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `msgId` INTEGER NOT NULL, `recordId` TEXT NOT NULL, `fromText` TEXT NOT NULL, `toText` TEXT NOT NULL, `fromLanguage` TEXT NOT NULL, `toLanguage` TEXT NOT NULL, `startTimeOffset` INTEGER NOT NULL, `endTimeOffset` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL, `noteId` INTEGER NOT NULL)");
            bVar.y("CREATE TABLE IF NOT EXISTS `text_history` (`oriContent` TEXT NOT NULL, `oriLanguageCode` TEXT NOT NULL, `resultContent` TEXT NOT NULL, `resultLanguageCode` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` INTEGER NOT NULL, `expandField1` TEXT NOT NULL, `expandField2` TEXT NOT NULL, `expandField3` TEXT NOT NULL, `globalId` TEXT NOT NULL, `type` INTEGER NOT NULL, `updateTimestamp` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
            bVar.y("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            bVar.y("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'fb3c376a8fe5ba532fad1bf441ceea14')");
        }

        @Override // androidx.room.j.a
        public void b(s0.b bVar) {
            bVar.y("DROP TABLE IF EXISTS `conversationHistory`");
            bVar.y("DROP TABLE IF EXISTS `simultaneousHistory`");
            bVar.y("DROP TABLE IF EXISTS `simultaneousSentence`");
            bVar.y("DROP TABLE IF EXISTS `text_history`");
            if (((h) AppDatabase_Impl.this).f3555h == null || ((h) AppDatabase_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AppDatabase_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        protected void c(s0.b bVar) {
            if (((h) AppDatabase_Impl.this).f3555h == null || ((h) AppDatabase_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AppDatabase_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        public void d(s0.b bVar) {
            ((h) AppDatabase_Impl.this).f3548a = bVar;
            AppDatabase_Impl.this.m(bVar);
            if (((h) AppDatabase_Impl.this).f3555h == null || ((h) AppDatabase_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AppDatabase_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        public void e(s0.b bVar) {
        }

        @Override // androidx.room.j.a
        public void f(s0.b bVar) {
            c.a(bVar);
        }

        @Override // androidx.room.j.a
        protected j.b g(s0.b bVar) {
            HashMap map = new HashMap(11);
            map.put("conversationId", new e.a("conversationId", "INTEGER", true, 1, null, 1));
            map.put("fromText", new e.a("fromText", "TEXT", true, 0, null, 1));
            map.put("toText", new e.a("toText", "TEXT", true, 0, null, 1));
            map.put(ASRInputSlot.KEY_FROM_LANGUAGE, new e.a(ASRInputSlot.KEY_FROM_LANGUAGE, "TEXT", true, 0, null, 1));
            map.put("toLanguage", new e.a("toLanguage", "TEXT", true, 0, null, 1));
            map.put(RealTimeAsrInputSlot.KEY_TIMESTAMP, new e.a(RealTimeAsrInputSlot.KEY_TIMESTAMP, "INTEGER", true, 0, null, 1));
            map.put("state", new e.a("state", "INTEGER", true, 0, null, 1));
            map.put("isLeft", new e.a("isLeft", "INTEGER", true, 0, null, 1));
            map.put("expandField1", new e.a("expandField1", "TEXT", true, 0, null, 1));
            map.put("expandField2", new e.a("expandField2", "TEXT", true, 0, null, 1));
            map.put("expandField3", new e.a("expandField3", "TEXT", true, 0, null, 1));
            HashSet hashSet = new HashSet(0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new e.d("index_conversationHistory_timestamp", true, Arrays.asList(RealTimeAsrInputSlot.KEY_TIMESTAMP)));
            e eVar = new e("conversationHistory", map, hashSet, hashSet2);
            e eVarA = e.a(bVar, "conversationHistory");
            if (!eVar.equals(eVarA)) {
                return new j.b(false, "conversationHistory(com.coloros.translate.repository.local.Conversation).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
            }
            HashMap map2 = new HashMap(7);
            map2.put("sid", new e.a("sid", "INTEGER", true, 1, null, 1));
            map2.put(RealTimeAsrInputSlot.KEY_TIMESTAMP, new e.a(RealTimeAsrInputSlot.KEY_TIMESTAMP, "INTEGER", true, 0, null, 1));
            map2.put("noteId", new e.a("noteId", "INTEGER", true, 0, null, 1));
            map2.put("noteTitle", new e.a("noteTitle", "TEXT", true, 0, null, 1));
            map2.put(TranslationClient.PARAM_KEY_AUDIO_FILE, new e.a(TranslationClient.PARAM_KEY_AUDIO_FILE, "TEXT", true, 0, null, 1));
            map2.put("simpleText", new e.a("simpleText", "TEXT", true, 0, null, 1));
            map2.put("audioTime", new e.a("audioTime", "INTEGER", true, 0, null, 1));
            e eVar2 = new e(SimultaneousHistory.TABLE_NAME, map2, new HashSet(0), new HashSet(0));
            e eVarA2 = e.a(bVar, SimultaneousHistory.TABLE_NAME);
            if (!eVar2.equals(eVarA2)) {
                return new j.b(false, "simultaneousHistory(com.coloros.translate.repository.local.SimultaneousHistory).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
            }
            HashMap map3 = new HashMap(11);
            map3.put("sid", new e.a("sid", "INTEGER", true, 1, null, 1));
            map3.put(RealTimeAsrInputSlot.KEY_MESSAGE_ID, new e.a(RealTimeAsrInputSlot.KEY_MESSAGE_ID, "INTEGER", true, 0, null, 1));
            map3.put(ASRInputSlot.KEY_FILE_RECORDID, new e.a(ASRInputSlot.KEY_FILE_RECORDID, "TEXT", true, 0, null, 1));
            map3.put("fromText", new e.a("fromText", "TEXT", true, 0, null, 1));
            map3.put("toText", new e.a("toText", "TEXT", true, 0, null, 1));
            map3.put(ASRInputSlot.KEY_FROM_LANGUAGE, new e.a(ASRInputSlot.KEY_FROM_LANGUAGE, "TEXT", true, 0, null, 1));
            map3.put("toLanguage", new e.a("toLanguage", "TEXT", true, 0, null, 1));
            map3.put("startTimeOffset", new e.a("startTimeOffset", "INTEGER", true, 0, null, 1));
            map3.put("endTimeOffset", new e.a("endTimeOffset", "INTEGER", true, 0, null, 1));
            map3.put(RealTimeAsrInputSlot.KEY_TIMESTAMP, new e.a(RealTimeAsrInputSlot.KEY_TIMESTAMP, "INTEGER", true, 0, null, 1));
            map3.put("noteId", new e.a("noteId", "INTEGER", true, 0, null, 1));
            e eVar3 = new e(SimultaneousSentence.TABLE_NAME, map3, new HashSet(0), new HashSet(0));
            e eVarA3 = e.a(bVar, SimultaneousSentence.TABLE_NAME);
            if (!eVar3.equals(eVarA3)) {
                return new j.b(false, "simultaneousSentence(com.coloros.translate.repository.local.SimultaneousSentence).\n Expected:\n" + eVar3 + "\n Found:\n" + eVarA3);
            }
            HashMap map4 = new HashMap(13);
            map4.put("oriContent", new e.a("oriContent", "TEXT", true, 0, null, 1));
            map4.put("oriLanguageCode", new e.a("oriLanguageCode", "TEXT", true, 0, null, 1));
            map4.put("resultContent", new e.a("resultContent", "TEXT", true, 0, null, 1));
            map4.put("resultLanguageCode", new e.a("resultLanguageCode", "TEXT", true, 0, null, 1));
            map4.put(RealTimeAsrInputSlot.KEY_TIMESTAMP, new e.a(RealTimeAsrInputSlot.KEY_TIMESTAMP, "INTEGER", true, 0, null, 1));
            map4.put("state", new e.a("state", "INTEGER", true, 0, null, 1));
            map4.put("expandField1", new e.a("expandField1", "TEXT", true, 0, null, 1));
            map4.put("expandField2", new e.a("expandField2", "TEXT", true, 0, null, 1));
            map4.put("expandField3", new e.a("expandField3", "TEXT", true, 0, null, 1));
            map4.put("globalId", new e.a("globalId", "TEXT", true, 0, null, 1));
            map4.put("type", new e.a("type", "INTEGER", true, 0, null, 1));
            map4.put("updateTimestamp", new e.a("updateTimestamp", "INTEGER", true, 0, null, 1));
            map4.put("id", new e.a("id", "INTEGER", true, 1, null, 1));
            e eVar4 = new e(TextHistory.TABLE_NAME, map4, new HashSet(0), new HashSet(0));
            e eVarA4 = e.a(bVar, TextHistory.TABLE_NAME);
            if (eVar4.equals(eVarA4)) {
                return new j.b(true, null);
            }
            return new j.b(false, "text_history(com.coloros.translate.repository.local.TextHistory).\n Expected:\n" + eVar4 + "\n Found:\n" + eVarA4);
        }
    }

    @Override // androidx.room.h
    protected androidx.room.e e() {
        return new androidx.room.e(this, new HashMap(0), new HashMap(0), "conversationHistory", SimultaneousHistory.TABLE_NAME, SimultaneousSentence.TABLE_NAME, TextHistory.TABLE_NAME);
    }

    @Override // androidx.room.h
    protected s0.c f(androidx.room.a aVar) {
        return aVar.f3486a.a(c.b.a(aVar.f3487b).c(aVar.f3488c).b(new j(aVar, new a(2), "fb3c376a8fe5ba532fad1bf441ceea14", "ed2bfe63cc320f356b57ac4bce0c1bba")).a());
    }

    @Override // com.coloros.translate.repository.local.AppDatabase
    public b s() {
        b bVar;
        if (this.f5444l != null) {
            return this.f5444l;
        }
        synchronized (this) {
            try {
                if (this.f5444l == null) {
                    this.f5444l = new i2.c(this);
                }
                bVar = this.f5444l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    @Override // com.coloros.translate.repository.local.AppDatabase
    public d t() {
        d dVar;
        if (this.f5445m != null) {
            return this.f5445m;
        }
        synchronized (this) {
            try {
                if (this.f5445m == null) {
                    this.f5445m = new i2.e(this);
                }
                dVar = this.f5445m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    @Override // com.coloros.translate.repository.local.AppDatabase
    public g u() {
        g gVar;
        if (this.f5446n != null) {
            return this.f5446n;
        }
        synchronized (this) {
            try {
                if (this.f5446n == null) {
                    this.f5446n = new i2.h(this);
                }
                gVar = this.f5446n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    @Override // com.coloros.translate.repository.local.AppDatabase
    public i v() {
        i iVar;
        if (this.f5447o != null) {
            return this.f5447o;
        }
        synchronized (this) {
            try {
                if (this.f5447o == null) {
                    this.f5447o = new i2.j(this);
                }
                iVar = this.f5447o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }
}
