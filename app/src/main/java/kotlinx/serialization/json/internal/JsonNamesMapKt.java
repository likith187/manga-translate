package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.JsonSchemaCacheKt;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonNamesMapKt {
    private static final DescriptorSchemaCache.Key<Map<String, Integer>> JsonDeserializationNamesKey = new DescriptorSchemaCache.Key<>();
    private static final DescriptorSchemaCache.Key<String[]> JsonSerializationNamesKey = new DescriptorSchemaCache.Key<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<String, Integer> buildDeserializationNamesMap(SerialDescriptor serialDescriptor, Json json) {
        String strSerialNameForJson;
        String[] strArrNames;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean zDecodeCaseInsensitive = decodeCaseInsensitive(json, serialDescriptor);
        JsonNamingStrategy jsonNamingStrategyNamingStrategy = namingStrategy(serialDescriptor, json);
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i10 = 0; i10 < elementsCount; i10++) {
            List<Annotation> elementAnnotations = serialDescriptor.getElementAnnotations(i10);
            ArrayList arrayList = new ArrayList();
            for (Object obj : elementAnnotations) {
                if (obj instanceof JsonNames) {
                    arrayList.add(obj);
                }
            }
            JsonNames jsonNames = (JsonNames) o.k0(arrayList);
            if (jsonNames != null && (strArrNames = jsonNames.names()) != null) {
                for (String lowerCase : strArrNames) {
                    if (zDecodeCaseInsensitive) {
                        lowerCase = lowerCase.toLowerCase(Locale.ROOT);
                        r.d(lowerCase, "toLowerCase(...)");
                    }
                    buildDeserializationNamesMap$putOrThrow(linkedHashMap, serialDescriptor, lowerCase, i10);
                }
            }
            if (zDecodeCaseInsensitive) {
                strSerialNameForJson = serialDescriptor.getElementName(i10).toLowerCase(Locale.ROOT);
                r.d(strSerialNameForJson, "toLowerCase(...)");
            } else {
                strSerialNameForJson = jsonNamingStrategyNamingStrategy != null ? jsonNamingStrategyNamingStrategy.serialNameForJson(serialDescriptor, i10, serialDescriptor.getElementName(i10)) : null;
            }
            if (strSerialNameForJson != null) {
                buildDeserializationNamesMap$putOrThrow(linkedHashMap, serialDescriptor, strSerialNameForJson, i10);
            }
        }
        return linkedHashMap.isEmpty() ? j0.h() : linkedHashMap;
    }

    private static final void buildDeserializationNamesMap$putOrThrow(Map<String, Integer> map, SerialDescriptor serialDescriptor, String str, int i10) {
        String str2 = r.a(serialDescriptor.getKind(), SerialKind.ENUM.INSTANCE) ? "enum value" : "property";
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for " + str2 + ' ' + serialDescriptor.getElementName(i10) + " is already one of the names for " + str2 + ' ' + serialDescriptor.getElementName(((Number) j0.i(map, str)).intValue()) + " in " + serialDescriptor);
    }

    private static final boolean decodeCaseInsensitive(Json json, SerialDescriptor serialDescriptor) {
        return json.getConfiguration().getDecodeEnumsCaseInsensitive() && r.a(serialDescriptor.getKind(), SerialKind.ENUM.INSTANCE);
    }

    public static final Map<String, Integer> deserializationNamesMap(final Json json, final SerialDescriptor descriptor) {
        r.e(json, "<this>");
        r.e(descriptor, "descriptor");
        return (Map) JsonSchemaCacheKt.getSchemaCache(json).getOrPut(descriptor, JsonDeserializationNamesKey, new w8.a() { // from class: kotlinx.serialization.json.internal.b
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonNamesMapKt.buildDeserializationNamesMap(descriptor, json);
            }
        });
    }

    public static final DescriptorSchemaCache.Key<Map<String, Integer>> getJsonDeserializationNamesKey() {
        return JsonDeserializationNamesKey;
    }

    public static final String getJsonElementName(SerialDescriptor serialDescriptor, Json json, int i10) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        JsonNamingStrategy jsonNamingStrategyNamingStrategy = namingStrategy(serialDescriptor, json);
        return jsonNamingStrategyNamingStrategy == null ? serialDescriptor.getElementName(i10) : serializationNamesIndices(serialDescriptor, json, jsonNamingStrategyNamingStrategy)[i10];
    }

    public static final int getJsonNameIndex(SerialDescriptor serialDescriptor, Json json, String name) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        r.e(name, "name");
        if (decodeCaseInsensitive(json, serialDescriptor)) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            r.d(lowerCase, "toLowerCase(...)");
            return getJsonNameIndexSlowPath(serialDescriptor, json, lowerCase);
        }
        if (namingStrategy(serialDescriptor, json) != null) {
            return getJsonNameIndexSlowPath(serialDescriptor, json, name);
        }
        int elementIndex = serialDescriptor.getElementIndex(name);
        return (elementIndex == -3 && json.getConfiguration().getUseAlternativeNames()) ? getJsonNameIndexSlowPath(serialDescriptor, json, name) : elementIndex;
    }

    public static final int getJsonNameIndexOrThrow(SerialDescriptor serialDescriptor, Json json, String name, String suffix) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        r.e(name, "name");
        r.e(suffix, "suffix");
        int jsonNameIndex = getJsonNameIndex(serialDescriptor, json, name);
        if (jsonNameIndex != -3) {
            return jsonNameIndex;
        }
        throw new SerializationException(serialDescriptor.getSerialName() + " does not contain element with name '" + name + '\'' + suffix);
    }

    public static /* synthetic */ int getJsonNameIndexOrThrow$default(SerialDescriptor serialDescriptor, Json json, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return getJsonNameIndexOrThrow(serialDescriptor, json, str, str2);
    }

    private static final int getJsonNameIndexSlowPath(SerialDescriptor serialDescriptor, Json json, String str) {
        Integer num = deserializationNamesMap(json, serialDescriptor).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final DescriptorSchemaCache.Key<String[]> getJsonSerializationNamesKey() {
        return JsonSerializationNamesKey;
    }

    public static final JsonNamingStrategy namingStrategy(SerialDescriptor serialDescriptor, Json json) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        if (r.a(serialDescriptor.getKind(), StructureKind.CLASS.INSTANCE)) {
            return json.getConfiguration().getNamingStrategy();
        }
        return null;
    }

    public static final String[] serializationNamesIndices(final SerialDescriptor serialDescriptor, Json json, final JsonNamingStrategy strategy) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        r.e(strategy, "strategy");
        return (String[]) JsonSchemaCacheKt.getSchemaCache(json).getOrPut(serialDescriptor, JsonSerializationNamesKey, new w8.a() { // from class: kotlinx.serialization.json.internal.c
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonNamesMapKt.serializationNamesIndices$lambda$4(serialDescriptor, strategy);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String[] serializationNamesIndices$lambda$4(SerialDescriptor serialDescriptor, JsonNamingStrategy jsonNamingStrategy) {
        int elementsCount = serialDescriptor.getElementsCount();
        String[] strArr = new String[elementsCount];
        for (int i10 = 0; i10 < elementsCount; i10++) {
            strArr[i10] = jsonNamingStrategy.serialNameForJson(serialDescriptor, i10, serialDescriptor.getElementName(i10));
        }
        return strArr;
    }

    public static final boolean tryCoerceValue(Json json, SerialDescriptor descriptor, int i10, l peekNull, w8.a peekString, w8.a onEnumCoercing) {
        String str;
        r.e(json, "<this>");
        r.e(descriptor, "descriptor");
        r.e(peekNull, "peekNull");
        r.e(peekString, "peekString");
        r.e(onEnumCoercing, "onEnumCoercing");
        boolean zIsElementOptional = descriptor.isElementOptional(i10);
        SerialDescriptor elementDescriptor = descriptor.getElementDescriptor(i10);
        if (zIsElementOptional && !elementDescriptor.isNullable() && ((Boolean) peekNull.invoke(Boolean.TRUE)).booleanValue()) {
            return true;
        }
        if (!r.a(elementDescriptor.getKind(), SerialKind.ENUM.INSTANCE) || ((elementDescriptor.isNullable() && ((Boolean) peekNull.invoke(Boolean.FALSE)).booleanValue()) || (str = (String) peekString.mo8invoke()) == null)) {
            return false;
        }
        int jsonNameIndex = getJsonNameIndex(elementDescriptor, json, str);
        boolean z10 = !json.getConfiguration().getExplicitNulls() && elementDescriptor.isNullable();
        if (jsonNameIndex == -3 && (zIsElementOptional || z10)) {
            onEnumCoercing.mo8invoke();
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean tryCoerceValue$default(Json json, SerialDescriptor descriptor, int i10, l peekNull, w8.a peekString, w8.a onEnumCoercing, int i11, Object obj) {
        String str;
        if ((i11 & 16) != 0) {
            onEnumCoercing = new w8.a() { // from class: kotlinx.serialization.json.internal.JsonNamesMapKt.tryCoerceValue.1
                public final void invoke() {
                }

                @Override // w8.a
                /* JADX INFO: renamed from: invoke */
                public /* bridge */ /* synthetic */ Object mo8invoke() {
                    invoke();
                    return h0.INSTANCE;
                }
            };
        }
        r.e(json, "<this>");
        r.e(descriptor, "descriptor");
        r.e(peekNull, "peekNull");
        r.e(peekString, "peekString");
        r.e(onEnumCoercing, "onEnumCoercing");
        boolean zIsElementOptional = descriptor.isElementOptional(i10);
        SerialDescriptor elementDescriptor = descriptor.getElementDescriptor(i10);
        if (zIsElementOptional && !elementDescriptor.isNullable() && ((Boolean) peekNull.invoke(Boolean.TRUE)).booleanValue()) {
            return true;
        }
        if (!r.a(elementDescriptor.getKind(), SerialKind.ENUM.INSTANCE) || ((elementDescriptor.isNullable() && ((Boolean) peekNull.invoke(Boolean.FALSE)).booleanValue()) || (str = (String) peekString.mo8invoke()) == null)) {
            return false;
        }
        int jsonNameIndex = getJsonNameIndex(elementDescriptor, json, str);
        boolean z10 = !json.getConfiguration().getExplicitNulls() && elementDescriptor.isNullable();
        if (jsonNameIndex == -3 && (zIsElementOptional || z10)) {
            onEnumCoercing.mo8invoke();
            return true;
        }
        return false;
    }
}
