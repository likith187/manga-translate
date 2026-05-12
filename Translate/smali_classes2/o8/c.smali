.class public final Lo8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lx8/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/c$a;,
        Lo8/c$b;,
        Lo8/c$c;,
        Lo8/c$d;,
        Lo8/c$e;,
        Lo8/c$f;
    }
.end annotation


# static fields
.field public static final Companion:Lo8/c$a;

.field private static final Empty:Lo8/c;

.field private static final INITIAL_CAPACITY:I = 0x8

.field private static final INITIAL_MAX_PROBE_DISTANCE:I = 0x2

.field private static final MAGIC:I = -0x61c88647

.field private static final TOMBSTONE:I = -0x1


# instance fields
.field private entriesView:Lo8/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo8/d;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private keysView:Lo8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo8/e;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private modCount:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private valuesView:Lo8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo8/f;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo8/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo8/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo8/c;->Companion:Lo8/c$a;

    new-instance v0, Lo8/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo8/c;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo8/c;->isReadOnly:Z

    sput-object v0, Lo8/c;->Empty:Lo8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 9
    invoke-direct {p0, v0}, Lo8/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 10
    invoke-static {p1}, Lo8/b;->a(I)[Ljava/lang/Object;

    move-result-object v1

    .line 11
    new-array v3, p1, [I

    .line 12
    sget-object v0, Lo8/c;->Companion:Lo8/c$a;

    invoke-static {v0, p1}, Lo8/c$a;->a(Lo8/c$a;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Lo8/c;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[I[III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lo8/c;->presenceArray:[I

    .line 5
    iput-object p4, p0, Lo8/c;->hashArray:[I

    .line 6
    iput p5, p0, Lo8/c;->maxProbeDistance:I

    .line 7
    iput p6, p0, Lo8/c;->length:I

    .line 8
    sget-object p1, Lo8/c;->Companion:Lo8/c$a;

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result p2

    invoke-static {p1, p2}, Lo8/c$a;->b(Lo8/c$a;I)I

    move-result p1

    iput p1, p0, Lo8/c;->hashShift:I

    return-void
.end method

.method public static final synthetic access$allocateValuesArray(Lo8/c;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lo8/c;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmpty$cp()Lo8/c;
    .locals 1

    sget-object v0, Lo8/c;->Empty:Lo8/c;

    return-object v0
.end method

.method public static final synthetic access$getKeysArray$p(Lo8/c;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lo8/c;)I
    .locals 0

    iget p0, p0, Lo8/c;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p(Lo8/c;)I
    .locals 0

    iget p0, p0, Lo8/c;->modCount:I

    return p0
.end method

.method public static final synthetic access$getPresenceArray$p(Lo8/c;)[I
    .locals 0

    iget-object p0, p0, Lo8/c;->presenceArray:[I

    return-object p0
.end method

.method public static final synthetic access$getValuesArray$p(Lo8/c;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$removeEntryAt(Lo8/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lo8/c;->removeEntryAt(I)V

    return-void
.end method

.method private final allocateValuesArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result v0

    invoke-static {v0}, Lo8/b;->a(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    return-object v0
.end method

.method private final compact(Z)V
    .locals 7

    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lo8/c;->length:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lo8/c;->presenceArray:[I

    aget v4, v3, v1

    if-ltz v4, :cond_2

    iget-object v5, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_0
    if-eqz p1, :cond_1

    aput v4, v3, v2

    iget-object v3, p0, Lo8/c;->hashArray:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lo8/b;->d([Ljava/lang/Object;II)V

    if-eqz v0, :cond_4

    iget p1, p0, Lo8/c;->length:I

    invoke-static {v0, v2, p1}, Lo8/b;->d([Ljava/lang/Object;II)V

    :cond_4
    iput v2, p0, Lo8/c;->length:I

    return-void
.end method

.method private final contentEquals(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo8/c;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final ensureCapacity(I)V
    .locals 2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result v0

    if-le p1, v0, :cond_1

    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/c$a;->e(II)I

    move-result p1

    iget-object v0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lo8/b;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo8/b;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    iget-object v0, p0, Lo8/c;->presenceArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo8/c;->presenceArray:[I

    sget-object v0, Lo8/c;->Companion:Lo8/c$a;

    invoke-static {v0, p1}, Lo8/c$a;->a(Lo8/c$a;I)I

    move-result p1

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-direct {p0, p1}, Lo8/c;->rehash(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method private final ensureExtraCapacity(I)V
    .locals 1

    invoke-direct {p0, p1}, Lo8/c;->shouldCompact(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo8/c;->compact(Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lo8/c;->length:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lo8/c;->ensureCapacity(I)V

    :goto_0
    return-void
.end method

.method private final findKey(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lo8/c;->hash(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lo8/c;->maxProbeDistance:I

    :goto_0
    iget-object v2, p0, Lo8/c;->hashArray:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private final findValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    iget v0, p0, Lo8/c;->length:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lo8/c;->presenceArray:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method private final getHashSize()I
    .locals 0

    iget-object p0, p0, Lo8/c;->hashArray:[I

    array-length p0, p0

    return p0
.end method

.method private final hash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget p0, p0, Lo8/c;->hashShift:I

    ushr-int p0, p1, p0

    return p0
.end method

.method private final putAllEntries(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lo8/c;->ensureExtraCapacity(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lo8/c;->putEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final putEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo8/c;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lo8/c;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    return v1

    :cond_0
    neg-int v0, v0

    sub-int/2addr v0, v1

    aget-object v2, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final putRehash(I)Z
    .locals 5

    iget-object v0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lo8/c;->hash(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lo8/c;->maxProbeDistance:I

    :goto_0
    iget-object v2, p0, Lo8/c;->hashArray:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v1, p1, 0x1

    aput v1, v2, v0

    iget-object p0, p0, Lo8/c;->presenceArray:[I

    aput v0, p0, p1

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private final registerModification()V
    .locals 1

    iget v0, p0, Lo8/c;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo8/c;->modCount:I

    return-void
.end method

.method private final rehash(I)V
    .locals 3

    invoke-direct {p0}, Lo8/c;->registerModification()V

    iget v0, p0, Lo8/c;->length:I

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-direct {p0, v2}, Lo8/c;->compact(Z)V

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lo8/c;->hashArray:[I

    sget-object v0, Lo8/c;->Companion:Lo8/c$a;

    invoke-static {v0, p1}, Lo8/c$a;->b(Lo8/c$a;I)I

    move-result p1

    iput p1, p0, Lo8/c;->hashShift:I

    :goto_0
    iget p1, p0, Lo8/c;->length:I

    if-ge v2, p1, :cond_2

    add-int/lit8 p1, v2, 0x1

    invoke-direct {p0, v2}, Lo8/c;->putRehash(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private final removeEntryAt(I)V
    .locals 2

    iget-object v0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lo8/b;->c([Ljava/lang/Object;I)V

    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo8/b;->c([Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lo8/c;->presenceArray:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lo8/c;->removeHashAt(I)V

    iget-object v0, p0, Lo8/c;->presenceArray:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lo8/c;->size:I

    invoke-direct {p0}, Lo8/c;->registerModification()V

    return-void
.end method

.method private final removeHashAt(I)V
    .locals 9

    iget v0, p0, Lo8/c;->maxProbeDistance:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lb9/d;->e(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v0, p1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lo8/c;->maxProbeDistance:I

    if-le v3, v4, :cond_2

    iget-object p0, p0, Lo8/c;->hashArray:[I

    aput v1, p0, v0

    return-void

    :cond_2
    iget-object v4, p0, Lo8/c;->hashArray:[I

    aget v5, v4, p1

    if-nez v5, :cond_3

    aput v1, v4, v0

    return-void

    :cond_3
    const/4 v6, -0x1

    if-gez v5, :cond_4

    aput v6, v4, v0

    :goto_1
    move v0, p1

    move v3, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lo8/c;->hash(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_5

    iget-object v3, p0, Lo8/c;->hashArray:[I

    aput v5, v3, v0

    iget-object v3, p0, Lo8/c;->presenceArray:[I

    aput v0, v3, v7

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v2, v6

    if-gez v2, :cond_0

    iget-object p0, p0, Lo8/c;->hashArray:[I

    aput v6, p0, v0

    return-void
.end method

.method private final shouldCompact(I)Z
    .locals 3

    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result v0

    iget v1, p0, Lo8/c;->length:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, p1, :cond_0

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    if-lt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lo8/c;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo8/g;

    invoke-direct {v0, p0}, Lo8/g;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The map cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addKey$kotlin_stdlib(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    :goto_0
    invoke-direct {p0, p1}, Lo8/c;->hash(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lo8/c;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lb9/d;->e(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lo8/c;->hashArray:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iget v1, p0, Lo8/c;->length:I

    invoke-virtual {p0}, Lo8/c;->getCapacity$kotlin_stdlib()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v4}, Lo8/c;->ensureExtraCapacity(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lo8/c;->length:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo8/c;->length:I

    iget-object v5, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object p1, p0, Lo8/c;->presenceArray:[I

    aput v0, p1, v1

    iget-object p1, p0, Lo8/c;->hashArray:[I

    aput v3, p1, v0

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lo8/c;->size:I

    invoke-direct {p0}, Lo8/c;->registerModification()V

    iget p1, p0, Lo8/c;->maxProbeDistance:I

    if-le v2, p1, :cond_1

    iput v2, p0, Lo8/c;->maxProbeDistance:I

    :cond_1
    return v1

    :cond_2
    iget-object v5, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int p0, v3

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lo8/c;->rehash(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_5

    invoke-direct {p0}, Lo8/c;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public final build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo8/c;->isReadOnly:Z

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lo8/c;->Empty:Lo8/c;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final checkIsMutable$kotlin_stdlib()V
    .locals 0

    iget-boolean p0, p0, Lo8/c;->isReadOnly:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 6

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    iget v0, p0, Lo8/c;->length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lo8/c;->presenceArray:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    iget-object v5, p0, Lo8/c;->hashArray:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    iget v2, p0, Lo8/c;->length:I

    invoke-static {v0, v1, v2}, Lo8/b;->d([Ljava/lang/Object;II)V

    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lo8/c;->length:I

    invoke-static {v0, v1, v2}, Lo8/b;->d([Ljava/lang/Object;II)V

    :cond_2
    iput v1, p0, Lo8/c;->size:I

    iput v1, p0, Lo8/c;->length:I

    invoke-direct {p0}, Lo8/c;->registerModification()V

    return-void
.end method

.method public final containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lo8/c;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lo8/c;->findValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final entriesIterator$kotlin_stdlib()Lo8/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo8/c$b;"
        }
    .end annotation

    new-instance v0, Lo8/c$b;

    invoke-direct {v0, p0}, Lo8/c$b;-><init>(Lo8/c;)V

    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lo8/c;->contentEquals(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getCapacity$kotlin_stdlib()I
    .locals 0

    iget-object p0, p0, Lo8/c;->keysArray:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lo8/c;->entriesView:Lo8/d;

    if-nez v0, :cond_0

    new-instance v0, Lo8/d;

    invoke-direct {v0, p0}, Lo8/d;-><init>(Lo8/c;)V

    iput-object v0, p0, Lo8/c;->entriesView:Lo8/d;

    :cond_0
    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo8/c;->keysView:Lo8/e;

    if-nez v0, :cond_0

    new-instance v0, Lo8/e;

    invoke-direct {v0, p0}, Lo8/e;-><init>(Lo8/c;)V

    iput-object v0, p0, Lo8/c;->keysView:Lo8/e;

    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lo8/c;->size:I

    return p0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo8/c;->valuesView:Lo8/f;

    if-nez v0, :cond_0

    new-instance v0, Lo8/f;

    invoke-direct {v0, p0}, Lo8/f;-><init>(Lo8/c;)V

    iput-object v0, p0, Lo8/c;->valuesView:Lo8/f;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lo8/c;->entriesIterator$kotlin_stdlib()Lo8/c$b;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lo8/c$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo8/c$b;->k()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReadOnly$kotlin_stdlib()Z
    .locals 0

    iget-boolean p0, p0, Lo8/c;->isReadOnly:Z

    return p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final keysIterator$kotlin_stdlib()Lo8/c$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo8/c$e;"
        }
    .end annotation

    new-instance v0, Lo8/c$e;

    invoke-direct {v0, p0}, Lo8/c$e;-><init>(Lo8/c;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-virtual {p0, p1}, Lo8/c;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0}, Lo8/c;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_0
    aput-object p2, p0, p1

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lo8/c;->putAllEntries(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-direct {p0, p1}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lo8/c;->removeEntryAt(I)V

    return-object v0
.end method

.method public final removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lo8/c;->valuesArray:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lo8/c;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeKey$kotlin_stdlib(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-direct {p0, p1}, Lo8/c;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lo8/c;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeValue$kotlin_stdlib(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-direct {p0, p1}, Lo8/c;->findValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lo8/c;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lo8/c;->getSize()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo8/c;->entriesIterator$kotlin_stdlib()Lo8/c$b;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lo8/c$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lo8/c$b;->j(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo8/c;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final valuesIterator$kotlin_stdlib()Lo8/c$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo8/c$f;"
        }
    .end annotation

    new-instance v0, Lo8/c$f;

    invoke-direct {v0, p0}, Lo8/c$f;-><init>(Lo8/c;)V

    return-object v0
.end method
