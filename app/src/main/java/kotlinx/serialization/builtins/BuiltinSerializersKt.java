package kotlinx.serialization.builtins;

import c9.c;
import d9.a;
import e9.b;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanArraySerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.ByteSerializer;
import kotlinx.serialization.internal.CharArraySerializer;
import kotlinx.serialization.internal.CharSerializer;
import kotlinx.serialization.internal.DoubleArraySerializer;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.DurationSerializer;
import kotlinx.serialization.internal.FloatArraySerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.IntArraySerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.LongArraySerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.MapEntrySerializer;
import kotlinx.serialization.internal.NothingSerializer;
import kotlinx.serialization.internal.NullableSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.ShortArraySerializer;
import kotlinx.serialization.internal.ShortSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TripleSerializer;
import kotlinx.serialization.internal.UByteArraySerializer;
import kotlinx.serialization.internal.UByteSerializer;
import kotlinx.serialization.internal.UIntArraySerializer;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongArraySerializer;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.internal.UShortArraySerializer;
import kotlinx.serialization.internal.UShortSerializer;
import kotlinx.serialization.internal.UnitSerializer;
import kotlinx.serialization.internal.UuidSerializer;
import n8.a0;
import n8.b0;
import n8.c0;
import n8.e0;
import n8.f0;
import n8.h0;
import n8.q;
import n8.v;
import n8.x;
import n8.y;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
public final class BuiltinSerializersKt {
    @ExperimentalSerializationApi
    public static final /* synthetic */ <T, E extends T> KSerializer<E[]> ArraySerializer(KSerializer<E> elementSerializer) {
        r.e(elementSerializer, "elementSerializer");
        r.i(4, "T");
        return ArraySerializer(d0.b(Object.class), elementSerializer);
    }

    public static final KSerializer<boolean[]> BooleanArraySerializer() {
        return BooleanArraySerializer.INSTANCE;
    }

    public static final KSerializer<byte[]> ByteArraySerializer() {
        return ByteArraySerializer.INSTANCE;
    }

    public static final KSerializer<char[]> CharArraySerializer() {
        return CharArraySerializer.INSTANCE;
    }

    public static final KSerializer<double[]> DoubleArraySerializer() {
        return DoubleArraySerializer.INSTANCE;
    }

    public static final KSerializer<float[]> FloatArraySerializer() {
        return FloatArraySerializer.INSTANCE;
    }

    public static final KSerializer<int[]> IntArraySerializer() {
        return IntArraySerializer.INSTANCE;
    }

    public static final <T> KSerializer<List<T>> ListSerializer(KSerializer<T> elementSerializer) {
        r.e(elementSerializer, "elementSerializer");
        return new ArrayListSerializer(elementSerializer);
    }

    public static final KSerializer<long[]> LongArraySerializer() {
        return LongArraySerializer.INSTANCE;
    }

    public static final <K, V> KSerializer<Map.Entry<K, V>> MapEntrySerializer(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        r.e(keySerializer, "keySerializer");
        r.e(valueSerializer, "valueSerializer");
        return new MapEntrySerializer(keySerializer, valueSerializer);
    }

    public static final <K, V> KSerializer<Map<K, V>> MapSerializer(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        r.e(keySerializer, "keySerializer");
        r.e(valueSerializer, "valueSerializer");
        return new LinkedHashMapSerializer(keySerializer, valueSerializer);
    }

    @ExperimentalSerializationApi
    public static final KSerializer NothingSerializer() {
        return NothingSerializer.INSTANCE;
    }

    public static final <K, V> KSerializer<q> PairSerializer(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        r.e(keySerializer, "keySerializer");
        r.e(valueSerializer, "valueSerializer");
        return new PairSerializer(keySerializer, valueSerializer);
    }

    public static final <T> KSerializer<Set<T>> SetSerializer(KSerializer<T> elementSerializer) {
        r.e(elementSerializer, "elementSerializer");
        return new LinkedHashSetSerializer(elementSerializer);
    }

    public static final KSerializer<short[]> ShortArraySerializer() {
        return ShortArraySerializer.INSTANCE;
    }

    public static final <A, B, C> KSerializer<v> TripleSerializer(KSerializer<A> aSerializer, KSerializer<B> bSerializer, KSerializer<C> cSerializer) {
        r.e(aSerializer, "aSerializer");
        r.e(bSerializer, "bSerializer");
        r.e(cSerializer, "cSerializer");
        return new TripleSerializer(aSerializer, bSerializer, cSerializer);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<y> UByteArraySerializer() {
        return UByteArraySerializer.INSTANCE;
    }

    @ExperimentalSerializationApi
    public static final KSerializer<a0> UIntArraySerializer() {
        return UIntArraySerializer.INSTANCE;
    }

    @ExperimentalSerializationApi
    public static final KSerializer<c0> ULongArraySerializer() {
        return ULongArraySerializer.INSTANCE;
    }

    @ExperimentalSerializationApi
    public static final KSerializer<f0> UShortArraySerializer() {
        return UShortArraySerializer.INSTANCE;
    }

    public static final <T> KSerializer<T> getNullable(KSerializer<T> kSerializer) {
        r.e(kSerializer, "<this>");
        return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
    }

    public static /* synthetic */ void getNullable$annotations(KSerializer kSerializer) {
    }

    public static final KSerializer<Character> serializer(f fVar) {
        r.e(fVar, "<this>");
        return CharSerializer.INSTANCE;
    }

    @ExperimentalSerializationApi
    public static final <T, E extends T> KSerializer<E[]> ArraySerializer(c kClass, KSerializer<E> elementSerializer) {
        r.e(kClass, "kClass");
        r.e(elementSerializer, "elementSerializer");
        return new ReferenceArraySerializer(kClass, elementSerializer);
    }

    public static final KSerializer<Byte> serializer(d dVar) {
        r.e(dVar, "<this>");
        return ByteSerializer.INSTANCE;
    }

    public static final KSerializer<Short> serializer(kotlin.jvm.internal.f0 f0Var) {
        r.e(f0Var, "<this>");
        return ShortSerializer.INSTANCE;
    }

    public static final KSerializer<Integer> serializer(kotlin.jvm.internal.q qVar) {
        r.e(qVar, "<this>");
        return IntSerializer.INSTANCE;
    }

    public static final KSerializer<Long> serializer(t tVar) {
        r.e(tVar, "<this>");
        return LongSerializer.INSTANCE;
    }

    public static final KSerializer<Float> serializer(k kVar) {
        r.e(kVar, "<this>");
        return FloatSerializer.INSTANCE;
    }

    public static final KSerializer<Double> serializer(j jVar) {
        r.e(jVar, "<this>");
        return DoubleSerializer.INSTANCE;
    }

    public static final KSerializer<Boolean> serializer(kotlin.jvm.internal.c cVar) {
        r.e(cVar, "<this>");
        return BooleanSerializer.INSTANCE;
    }

    public static final KSerializer<h0> serializer(h0 h0Var) {
        r.e(h0Var, "<this>");
        return UnitSerializer.INSTANCE;
    }

    public static final KSerializer<String> serializer(kotlin.jvm.internal.h0 h0Var) {
        r.e(h0Var, "<this>");
        return StringSerializer.INSTANCE;
    }

    public static final KSerializer<z> serializer(z.a aVar) {
        r.e(aVar, "<this>");
        return UIntSerializer.INSTANCE;
    }

    public static final KSerializer<b0> serializer(b0.a aVar) {
        r.e(aVar, "<this>");
        return ULongSerializer.INSTANCE;
    }

    public static final KSerializer<x> serializer(x.a aVar) {
        r.e(aVar, "<this>");
        return UByteSerializer.INSTANCE;
    }

    public static final KSerializer<e0> serializer(e0.a aVar) {
        r.e(aVar, "<this>");
        return UShortSerializer.INSTANCE;
    }

    public static final KSerializer<a> serializer(a.C0135a c0135a) {
        r.e(c0135a, "<this>");
        return DurationSerializer.INSTANCE;
    }

    public static final KSerializer<b> serializer(b.a aVar) {
        r.e(aVar, "<this>");
        return UuidSerializer.INSTANCE;
    }
}
