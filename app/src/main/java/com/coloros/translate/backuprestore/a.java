package com.coloros.translate.backuprestore;

import android.os.Bundle;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.p;
import java.io.IOException;
import java.io.StringReader;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0060a f4759d = new C0060a(null);

    /* JADX INFO: renamed from: com.coloros.translate.backuprestore.a$a, reason: collision with other inner class name */
    public static final class C0060a {
        public /* synthetic */ C0060a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0060a() {
        }
    }

    public final boolean g(int i10) {
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.setOutput(c());
            xmlSerializerB.startDocument(null, Boolean.FALSE);
            xmlSerializerB.startTag(null, "backupInfo");
            xmlSerializerB.attribute(null, "maxCount", String.valueOf(i10));
            xmlSerializerB.attribute(null, "osVersion", p.d());
            xmlSerializerB.attribute(null, "appVersion", "16.0.26");
            xmlSerializerB.attribute(null, "databaseVersion", String.valueOf(i2.a.INSTANCE.d()));
            xmlSerializerB.attribute(null, "isDomestic", String.valueOf(p.INSTANCE.e()));
            xmlSerializerB.attribute(null, "deviceBrand", p.b());
            xmlSerializerB.attribute(null, "deviceType", p.c());
            xmlSerializerB.endTag(null, "backupInfo");
            xmlSerializerB.endDocument();
            return true;
        } catch (Exception e10) {
            c0.f7098a.e("BackupInfoXmlComposerAndParser", "createBackupInfoXml error: " + e10.getMessage());
            return false;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Bundle h(String str) {
        Bundle bundle = new Bundle();
        try {
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    String name = xmlPullParserNewPullParser.getName();
                    r.d(name, "getName(...)");
                    if (r.a(name, "backupInfo")) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i10 = 0; i10 < attributeCount; i10++) {
                            String attributeName = xmlPullParserNewPullParser.getAttributeName(i10);
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i10);
                            if (attributeName != null) {
                                switch (attributeName.hashCode()) {
                                    case -1569733935:
                                        if (attributeName.equals("deviceBrand")) {
                                            bundle.putString("deviceBrand", attributeValue);
                                        }
                                        break;
                                    case 340158568:
                                        if (attributeName.equals("isDomestic")) {
                                            bundle.putBoolean("isDomestic", Boolean.parseBoolean(attributeValue));
                                        }
                                        break;
                                    case 382106123:
                                        if (attributeName.equals("maxCount")) {
                                            r.b(attributeValue);
                                            bundle.putInt("maxCount", Integer.parseInt(attributeValue));
                                        }
                                        break;
                                    case 781190832:
                                        if (attributeName.equals("deviceType")) {
                                            bundle.putString("deviceType", attributeValue);
                                        }
                                        break;
                                    case 1250955997:
                                        if (attributeName.equals("databaseVersion")) {
                                            r.b(attributeValue);
                                            bundle.putInt("databaseVersion", Integer.parseInt(attributeValue));
                                        }
                                        break;
                                    case 1484112759:
                                        if (attributeName.equals("appVersion")) {
                                            bundle.putString("appVersion", attributeValue);
                                        }
                                        break;
                                    case 1812004436:
                                        if (attributeName.equals("osVersion")) {
                                            bundle.putString("osVersion", attributeValue);
                                        }
                                        break;
                                }
                            }
                        }
                    }
                }
            }
        } catch (IOException e10) {
            c0.f7098a.e("BackupInfoXmlComposerAndParser", "parse IOException! " + e10.getMessage());
        } catch (XmlPullParserException e11) {
            c0.f7098a.e("BackupInfoXmlComposerAndParser", "parse XmlPullParserException! " + e11.getMessage());
        }
        return bundle;
    }
}
