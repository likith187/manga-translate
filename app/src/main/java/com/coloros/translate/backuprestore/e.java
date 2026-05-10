package com.coloros.translate.backuprestore;

import com.coloros.translate.repository.local.TextHistory;
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
public final class e extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4765d = new a(null);

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
            TextHistory textHistory = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    TextHistory textHistory2 = new TextHistory("", "", "", "", 0L, 0, "", "", "", "", 0, 0L);
                    String name = xmlPullParserNewPullParser.getName();
                    r.d(name, "getName(...)");
                    if (r.a(name, "textHistory")) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i10 = 0; i10 < attributeCount; i10++) {
                            String attributeName = xmlPullParserNewPullParser.getAttributeName(i10);
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i10);
                            if (r.a(attributeName, "data")) {
                                r.b(attributeValue);
                                textHistory2 = (TextHistory) b0.a(attributeValue, TextHistory.class);
                            }
                        }
                    }
                    textHistory = textHistory2;
                } else if (eventType != 3) {
                    continue;
                } else if (r.a(xmlPullParserNewPullParser.getName(), "textHistory") && textHistory != null) {
                    arrayList.add(textHistory);
                }
            }
        } catch (IOException e10) {
            c0.f7098a.e("TextHistoryXmlComposerAndParser", "parse IOException! " + e10.getMessage());
        } catch (XmlPullParserException e11) {
            c0.f7098a.e("TextHistoryXmlComposerAndParser", "parse XmlPullParserException! " + e11.getMessage());
        }
        return arrayList;
    }

    public final boolean h(TextHistory textHistory) {
        r.e(textHistory, "textHistory");
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.startTag("", "textHistory");
            xmlSerializerB.attribute("", "data", b0.b(textHistory));
            xmlSerializerB.endTag("", "textHistory");
            return true;
        } catch (IOException e10) {
            c0.f7098a.e("TextHistoryXmlComposerAndParser", "writeTextHistoryDataToSerializer IOException " + e10.getMessage());
            return false;
        } catch (IllegalArgumentException e11) {
            c0.f7098a.e("TextHistoryXmlComposerAndParser", "writeTextHistoryDataToSerializer IllegalArgumentException: " + e11.getMessage());
            return false;
        } catch (IllegalStateException e12) {
            c0.f7098a.e("TextHistoryXmlComposerAndParser", "writeTextHistoryDataToSerializer IllegalStateException " + e12.getMessage());
            return false;
        }
    }
}
