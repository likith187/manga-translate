package com.coloros.translate.backuprestore;

import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.utils.b0;
import com.coloros.translate.utils.c0;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4763d = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final ArrayList g(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            SimultaneousHistory simultaneousHistory = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    SimultaneousHistory simultaneousHistory2 = new SimultaneousHistory();
                    String name = xmlPullParserNewPullParser.getName();
                    r.d(name, "getName(...)");
                    if (r.a(name, SimultaneousHistory.TABLE_NAME)) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i10 = 0; i10 < attributeCount; i10++) {
                            String attributeName = xmlPullParserNewPullParser.getAttributeName(i10);
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i10);
                            if (r.a(attributeName, "data")) {
                                r.b(attributeValue);
                                simultaneousHistory2 = (SimultaneousHistory) b0.a(attributeValue, SimultaneousHistory.class);
                            }
                        }
                    }
                    simultaneousHistory = simultaneousHistory2;
                } else if (eventType != 3) {
                    continue;
                } else if (r.a(xmlPullParserNewPullParser.getName(), SimultaneousHistory.TABLE_NAME) && simultaneousHistory != null) {
                    arrayList.add(simultaneousHistory);
                }
            }
        } catch (IOException e10) {
            c0.f7098a.e("SimultaneousHistoryXmlComposerAndParser", "parse IOException! " + e10.getMessage());
        } catch (XmlPullParserException e11) {
            c0.f7098a.e("SimultaneousHistoryXmlComposerAndParser", "parse XmlPullParserException! " + e11.getMessage());
        }
        return arrayList;
    }

    public final boolean h(SimultaneousHistory simultaneousHistory) {
        r.e(simultaneousHistory, "simultaneousHistory");
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.startTag(null, SimultaneousHistory.TABLE_NAME);
            xmlSerializerB.attribute(null, "data", b0.b(simultaneousHistory));
            xmlSerializerB.endTag(null, SimultaneousHistory.TABLE_NAME);
            return true;
        } catch (IOException e10) {
            c0.f7098a.e("SimultaneousHistoryXmlComposerAndParser", "writeSimultaneousHistoryDataToSerializer IOException " + e10.getMessage());
            return false;
        } catch (IllegalArgumentException e11) {
            c0.f7098a.e("SimultaneousHistoryXmlComposerAndParser", "writeSimultaneousHistoryDataToSerializer IllegalArgumentException: " + e11.getMessage());
            return false;
        } catch (IllegalStateException e12) {
            c0.f7098a.e("SimultaneousHistoryXmlComposerAndParser", "writeSimultaneousHistoryDataToSerializer IllegalStateException " + e12.getMessage());
            return false;
        }
    }
}
