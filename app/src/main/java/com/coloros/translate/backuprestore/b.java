package com.coloros.translate.backuprestore;

import android.util.Xml;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.core.ConfigPackage;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.StringWriter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f4760c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f4761a = k.b(C0061b.INSTANCE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f4762b = k.b(c.INSTANCE);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.backuprestore.b$b, reason: collision with other inner class name */
    static final class C0061b extends s implements w8.a {
        public static final C0061b INSTANCE = new C0061b();

        C0061b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final XmlSerializer mo8invoke() {
            return Xml.newSerializer();
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final StringWriter mo8invoke() {
            return new StringWriter();
        }
    }

    public final boolean a(String endTagValue) {
        r.e(endTagValue, "endTagValue");
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.endTag("", endTagValue);
            xmlSerializerB.endDocument();
            return true;
        } catch (IOException e10) {
            c0.f7098a.e("BaseXmlComposerAndParser", "endCompose IOException: " + e10.getMessage());
            return false;
        } catch (IllegalArgumentException e11) {
            c0.f7098a.e("BaseXmlComposerAndParser", "endCompose IllegalArgumentException: " + e11.getMessage());
            return false;
        } catch (IllegalStateException e12) {
            c0.f7098a.e("BaseXmlComposerAndParser", "endCompose IllegalStateException: " + e12.getMessage());
            return false;
        }
    }

    public final XmlSerializer b() {
        Object value = this.f4761a.getValue();
        r.d(value, "getValue(...)");
        return (XmlSerializer) value;
    }

    public final StringWriter c() {
        return (StringWriter) this.f4762b.getValue();
    }

    public final String d(FileDescriptor fileDescriptor) throws Throwable {
        FileInputStream fileInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        a0 a0Var;
        byte[] bArr;
        r.e(fileDescriptor, "fileDescriptor");
        c0.f7098a.d("BaseXmlComposerAndParser", "getXmlInfoFromFileDescriptor");
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(fileDescriptor);
        } catch (IOException e10) {
            e = e10;
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                a0Var = new a0();
                a0Var.element = -1;
                bArr = new byte[ConfigPackage.FRAME_SIZE_6];
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
            }
            while (true) {
                int i10 = fileInputStream.read(bArr, 0, ConfigPackage.FRAME_SIZE_6);
                a0Var.element = i10;
                if (i10 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e11) {
                        c0.f7098a.e("BaseXmlComposerAndParser", "getXmlInfoFromFileDescriptor:" + e11.getMessage());
                    }
                }
                throw th;
            }
            String string = byteArrayOutputStream.toString();
            try {
                fileInputStream.close();
            } catch (IOException e12) {
                c0.f7098a.e("BaseXmlComposerAndParser", "getXmlInfoFromFileDescriptor:" + e12.getMessage());
            }
            return string;
        } catch (IOException e13) {
            e = e13;
            c0.f7098a.e("BaseXmlComposerAndParser", "getXmlInfoFromFileDescriptor IOException! " + e.getMessage());
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e14) {
                    c0.f7098a.e("BaseXmlComposerAndParser", "getXmlInfoFromFileDescriptor:" + e14.getMessage());
                }
            }
            return null;
        }
    }

    public final String e() {
        StringBuffer buffer = c().getBuffer();
        r.d(buffer, "getBuffer(...)");
        if (buffer.length() > 0) {
            return c().toString();
        }
        return null;
    }

    public final boolean f(String startTagValue) {
        r.e(startTagValue, "startTagValue");
        try {
            XmlSerializer xmlSerializerB = b();
            xmlSerializerB.setOutput(c());
            xmlSerializerB.startDocument(null, Boolean.FALSE);
            xmlSerializerB.startTag("", startTagValue);
            return true;
        } catch (IOException e10) {
            c0.f7098a.e("BaseXmlComposerAndParser", "startCompose IOException: " + e10.getMessage());
            return false;
        } catch (IllegalArgumentException e11) {
            c0.f7098a.e("BaseXmlComposerAndParser", "startCompose IllegalArgumentException: " + e11.getMessage());
            return false;
        } catch (IllegalStateException e12) {
            c0.f7098a.e("BaseXmlComposerAndParser", "startCompose IllegalStateException: " + e12.getMessage());
            return false;
        }
    }
}
