package com.coloros.translate.backuprestore;

import com.coloros.translate.repository.local.SimultaneousSentence;
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
public final class d extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4764d = new a(null);

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
            SimultaneousSentence simultaneousSentence = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    SimultaneousSentence simultaneousSentence2 = new SimultaneousSentence();
                    String name = xmlPullParserNewPullParser.getName();
                    r.d(name, "getName(...)");
                    if (r.a(name, SimultaneousSentence.TABLE_NAME)) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i10 = 0; i10 < attributeCount; i10++) {
                            String attributeName = xmlPullParserNewPullParser.getAttributeName(i10);
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i10);
                            if (r.a(attributeName, "data")) {
                                r.b(attributeValue);
                                simultaneousSentence2 = (SimultaneousSentence) b0.a(attributeValue, SimultaneousSentence.class);
                            }
                        }
                    }
                    simultaneousSentence = simultaneousSentence2;
                } else if (eventType != 3) {
                    continue;
                } else if (r.a(xmlPullParserNewPullParser.getName(), SimultaneousSentence.TABLE_NAME) && simultaneousSentence != null) {
                    arrayList.add(simultaneousSentence);
                }
            }
        } catch (IOException e10) {
            c0.f7098a.e("SimultaneousSentenceXmlComposerAndParser", "parse IOException! " + e10.getMessage());
        } catch (XmlPullParserException e11) {
            c0.f7098a.e("SimultaneousSentenceXmlComposerAndParser", "parse XmlPullParserException! " + e11.getMessage());
        }
        return arrayList;
    }

    public final boolean h(SimultaneousSentence simultaneousSentence) {
        r.e(simultaneousSentence, "simultaneousSentence");
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.startTag("", SimultaneousSentence.TABLE_NAME);
            xmlSerializerB.attribute("", "data", b0.b(simultaneousSentence));
            xmlSerializerB.endTag("", SimultaneousSentence.TABLE_NAME);
            return true;
        } catch (IOException e10) {
            c0.f7098a.e("SimultaneousSentenceXmlComposerAndParser", "writeSimultaneousSentenceDataToSerializer IOException " + e10.getMessage());
            return false;
        } catch (IllegalArgumentException e11) {
            c0.f7098a.e("SimultaneousSentenceXmlComposerAndParser", "writeSimultaneousSentenceDataToSerializer IllegalArgumentException: " + e11.getMessage());
            return false;
        } catch (IllegalStateException e12) {
            c0.f7098a.e("SimultaneousSentenceXmlComposerAndParser", "writeSimultaneousSentenceDataToSerializer IllegalStateException " + e12.getMessage());
            return false;
        }
    }
}
