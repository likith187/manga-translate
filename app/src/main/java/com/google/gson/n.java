package com.google.gson;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static i b(a5.a aVar) {
        boolean zA0 = aVar.a0();
        aVar.Q0(true);
        try {
            try {
                return com.google.gson.internal.m.a(aVar);
            } catch (OutOfMemoryError e10) {
                throw new m("Failed parsing JSON source: " + aVar + " to Json", e10);
            } catch (StackOverflowError e11) {
                throw new m("Failed parsing JSON source: " + aVar + " to Json", e11);
            }
        } finally {
            aVar.Q0(zA0);
        }
    }

    public static i c(Reader reader) {
        try {
            a5.a aVar = new a5.a(reader);
            i iVarB = b(aVar);
            if (!iVarB.j() && aVar.L0() != a5.b.END_DOCUMENT) {
                throw new q("Did not consume the entire document.");
            }
            return iVarB;
        } catch (a5.d e10) {
            throw new q(e10);
        } catch (IOException e11) {
            throw new j(e11);
        } catch (NumberFormatException e12) {
            throw new q(e12);
        }
    }

    public static i d(String str) {
        return c(new StringReader(str));
    }

    public i a(String str) {
        return d(str);
    }
}
