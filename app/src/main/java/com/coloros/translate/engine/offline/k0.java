package com.coloros.translate.engine.offline;

import android.text.TextUtils;
import com.coloros.translate.engine.offline.j0;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class k0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f5067c = "verify" + File.separator;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static k0 f5068d = new k0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f5069a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5070b;

    private j0 b(String str, Set set) {
        if (TextUtils.isEmpty(str) || set == null || set.size() <= 0) {
            return null;
        }
        j0 j0Var = new j0();
        j0Var.d(str);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            File file = new File(str2);
            if (!file.exists()) {
                return null;
            }
            j0Var.a(str2, file.lastModified());
        }
        return j0Var;
    }

    private boolean d(Document document, File file) {
        try {
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("encoding", "UTF-8");
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.transform(new DOMSource(document), new StreamResult(file));
            return true;
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.o("ResourceVerifyUtil", "doc2XmlFile; fail, e: " + e10.getMessage());
            return false;
        }
    }

    public static k0 e() {
        return f5068d;
    }

    private j0 f(File file) {
        if (file != null && file.exists()) {
            try {
                NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file).getElementsByTagName("package");
                for (int i10 = 0; i10 < elementsByTagName.getLength(); i10++) {
                    Node nodeItem = elementsByTagName.item(i10);
                    if (nodeItem.getNodeType() == 1) {
                        j0 j0Var = new j0();
                        Element element = (Element) nodeItem;
                        String attribute = element.getAttribute(RealTimeAsrInputSlot.KEY_LANGUAGE);
                        j0Var.d(attribute);
                        com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "getResourceVerifyInfoByFile language: " + attribute);
                        NodeList elementsByTagName2 = element.getElementsByTagName("file");
                        for (int i11 = 0; i11 < elementsByTagName2.getLength(); i11++) {
                            Node nodeItem2 = elementsByTagName2.item(i11);
                            if (nodeItem2.getNodeType() == 1) {
                                Element element2 = (Element) nodeItem2;
                                j0Var.a(element2.getElementsByTagName("name").item(0).getTextContent(), Long.parseLong(element2.getElementsByTagName("create_time").item(0).getTextContent()));
                            }
                        }
                        return j0Var;
                    }
                }
            } catch (Exception e10) {
                com.coloros.translate.utils.c0.o("ResourceVerifyUtil", "getResourceVerifyInfoByFile fail, e: " + e10.getMessage());
            }
        }
        return null;
    }

    private Element i(Document document, j0 j0Var) {
        if (document == null) {
            return null;
        }
        Element elementCreateElement = document.createElement("package");
        Attr attrCreateAttribute = document.createAttribute(RealTimeAsrInputSlot.KEY_LANGUAGE);
        attrCreateAttribute.setNodeValue(j0Var.c());
        elementCreateElement.setAttributeNode(attrCreateAttribute);
        ArrayList arrayListB = j0Var.b();
        if (arrayListB != null && arrayListB.size() > 0) {
            for (int i10 = 0; i10 < arrayListB.size(); i10++) {
                j0.a aVar = (j0.a) arrayListB.get(i10);
                Element elementCreateElement2 = document.createElement("file");
                Element elementCreateElement3 = document.createElement("name");
                Element elementCreateElement4 = document.createElement("create_time");
                elementCreateElement3.appendChild(document.createTextNode(aVar.b()));
                elementCreateElement4.appendChild(document.createTextNode(String.valueOf(aVar.a())));
                elementCreateElement2.appendChild(elementCreateElement3);
                elementCreateElement2.appendChild(elementCreateElement4);
                elementCreateElement.appendChild(elementCreateElement2);
            }
        }
        return elementCreateElement;
    }

    private boolean j(j0 j0Var) {
        com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "saveResourceVerifyInfo verifyInfo = " + j0Var);
        try {
            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "saveResourceVerifyInfo mVerifyFileDir = " + this.f5070b);
            com.coloros.translate.utils.y.k(this.f5070b, false);
            File file = new File(this.f5070b + j0Var.c());
            if (file.exists()) {
                com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "saveResourceVerifyInfo file is existed, delete result = " + file.delete());
            }
            if (!file.createNewFile()) {
                com.coloros.translate.utils.c0.o("ResourceVerifyUtil", "saveResourceVerifyInfo createNewFile fail.");
                return false;
            }
            Document documentNewDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            Element elementCreateElement = documentNewDocument.createElement("root");
            documentNewDocument.appendChild(elementCreateElement);
            Element elementI = i(documentNewDocument, j0Var);
            if (elementI != null) {
                elementCreateElement.appendChild(elementI);
            }
            boolean zD = d(documentNewDocument, file);
            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "saveResourceVerifyInfo result " + zD);
            return zD;
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.o("ResourceVerifyUtil", "saveResourceVerifyInfo fail, e: " + e10.getMessage());
            return false;
        }
    }

    public boolean a(String str, Set set) {
        j0 j0VarB = b(str, set);
        if (j0VarB == null) {
            com.coloros.translate.utils.c0.o("ResourceVerifyUtil", "addNewPackageInfo buildResourceVerifyInfo fail");
            return false;
        }
        if (this.f5069a.size() > 0) {
            c(str);
        }
        boolean zJ = j(j0VarB);
        if (zJ) {
            this.f5069a.add(j0VarB);
        }
        return zJ;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Iterator it = this.f5069a.iterator();
        while (it.hasNext()) {
            if (str.equals(((j0) it.next()).c())) {
                it.remove();
            }
        }
        File file = new File(this.f5070b + str);
        if (!file.exists()) {
            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "deleteVerifyInfo language: " + str + ", file not exist");
            return;
        }
        com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "deleteVerifyInfo language: " + str + ", file delete result = " + file.delete());
    }

    public synchronized void g() {
        try {
            this.f5070b = g0.b().c() + f5067c;
            ArrayList<String> allLanguageCode = g.getAllLanguageCode();
            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "init start mVerifyFileDir:" + this.f5070b);
            this.f5069a.clear();
            Iterator<String> it = allLanguageCode.iterator();
            while (it.hasNext()) {
                String str = this.f5070b + it.next();
                File file = new File(str);
                com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "init start fileName:" + str);
                if (file.exists()) {
                    j0 j0VarF = f(file);
                    if (j0VarF != null) {
                        this.f5069a.add(j0VarF);
                    } else {
                        file.delete();
                    }
                    com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "init check file:" + str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean h(String str) {
        if (TextUtils.isEmpty(str) || this.f5069a.isEmpty()) {
            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "isPackageExisted return false, language " + str);
            return false;
        }
        for (j0 j0Var : this.f5069a) {
            if (str.equals(j0Var.c())) {
                ArrayList arrayListB = j0Var.b();
                if (arrayListB != null && arrayListB.size() > 0) {
                    for (int i10 = 0; i10 < arrayListB.size(); i10++) {
                        String strB = ((j0.a) arrayListB.get(i10)).b();
                        com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "isPackageExisted fileName:" + strB);
                        if (TextUtils.isEmpty(strB)) {
                            return false;
                        }
                        if (!new File(strB).exists()) {
                            com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "isPackageExisted " + strB + " not exist");
                            return false;
                        }
                    }
                }
                com.coloros.translate.utils.c0.i("ResourceVerifyUtil", "isPackageExisted language " + str + " return true.");
                return true;
            }
        }
        return false;
    }
}
