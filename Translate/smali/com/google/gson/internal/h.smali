.class public final Lcom/google/gson/internal/h;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/h$c;,
        Lcom/google/gson/internal/h$b;,
        Lcom/google/gson/internal/h$d;,
        Lcom/google/gson/internal/h$e;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowNullValues:Z

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/h.b;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/h.c;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/h$a;

    invoke-direct {v0}, Lcom/google/gson/internal/h$a;-><init>()V

    sput-object v0, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/h;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/gson/internal/h;->size:I

    .line 5
    iput v0, p0, Lcom/google/gson/internal/h;->modCount:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/google/gson/internal/h;->comparator:Ljava/util/Comparator;

    .line 7
    iput-boolean p2, p0, Lcom/google/gson/internal/h;->allowNullValues:Z

    .line 8
    new-instance p1, Lcom/google/gson/internal/h$e;

    invoke-direct {p1, p2}, Lcom/google/gson/internal/h$e;-><init>(Z)V

    iput-object p1, p0, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/h;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is unsupported"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private rebalance(Lcom/google/gson/internal/h$e;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/h$e;",
            "Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v1, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v3, v1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/google/gson/internal/h$e;->l:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/gson/internal/h;->rotateRight(Lcom/google/gson/internal/h$e;)V

    invoke-direct {p0, p1}, Lcom/google/gson/internal/h;->rotateLeft(Lcom/google/gson/internal/h$e;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/gson/internal/h;->rotateLeft(Lcom/google/gson/internal/h$e;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v3, v0, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    if-eqz v1, :cond_8

    iget v2, v1, Lcom/google/gson/internal/h$e;->l:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {p0, v0}, Lcom/google/gson/internal/h;->rotateLeft(Lcom/google/gson/internal/h$e;)V

    invoke-direct {p0, p1}, Lcom/google/gson/internal/h;->rotateRight(Lcom/google/gson/internal/h$e;)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-direct {p0, p1}, Lcom/google/gson/internal/h;->rotateRight(Lcom/google/gson/internal/h$e;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/google/gson/internal/h$e;->l:I

    if-eqz p2, :cond_d

    goto :goto_9

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/google/gson/internal/h$e;->l:I

    if-nez p2, :cond_d

    goto :goto_9

    :cond_d
    iget-object p1, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method private replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/h$e;",
            "Lcom/google/gson/internal/h$e;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    :cond_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/google/gson/internal/h;->root:Lcom/google/gson/internal/h$e;

    :goto_0
    return-void
.end method

.method private rotateLeft(Lcom/google/gson/internal/h$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/h$e;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v1, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iget-object v2, v1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v3, v1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iput-object v2, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    iput-object p1, v1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iput-object v1, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/h$e;->l:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/google/gson/internal/h$e;->l:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/google/gson/internal/h$e;->l:I

    return-void
.end method

.method private rotateRight(Lcom/google/gson/internal/h$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/h$e;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v1, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iget-object v2, v0, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v3, v0, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iput-object v3, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    iput-object p1, v0, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iput-object v0, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/google/gson/internal/h$e;->l:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/gson/internal/h$e;->l:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/google/gson/internal/h$e;->l:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/google/gson/internal/h$e;->l:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/h;->root:Lcom/google/gson/internal/h$e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/h;->size:I

    iget v0, p0, Lcom/google/gson/internal/h;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/h;->modCount:I

    iget-object p0, p0, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    iput-object p0, p0, Lcom/google/gson/internal/h$e;->h:Lcom/google/gson/internal/h$e;

    iput-object p0, p0, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public entrySet()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/gson/internal/h;->entrySet:Lcom/google/gson/internal/h$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/h$b;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/h$b;-><init>(Lcom/google/gson/internal/h;)V

    iput-object v0, p0, Lcom/google/gson/internal/h;->entrySet:Lcom/google/gson/internal/h$b;

    :goto_0
    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/h$e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/h;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/gson/internal/h;->root:Lcom/google/gson/internal/h$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/google/gson/internal/h$e;->i:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/google/gson/internal/h$e;->i:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    iget-object v5, v1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    iget-object v9, p0, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    const/4 p2, 0x1

    if-nez v1, :cond_9

    sget-object v2, Lcom/google/gson/internal/h;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v2, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    new-instance v0, Lcom/google/gson/internal/h$e;

    iget-boolean v6, p0, Lcom/google/gson/internal/h;->allowNullValues:Z

    iget-object v10, v9, Lcom/google/gson/internal/h$e;->h:Lcom/google/gson/internal/h$e;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/h$e;-><init>(ZLcom/google/gson/internal/h$e;Ljava/lang/Object;Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    iput-object v0, p0, Lcom/google/gson/internal/h;->root:Lcom/google/gson/internal/h$e;

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/google/gson/internal/h$e;

    iget-boolean v6, p0, Lcom/google/gson/internal/h;->allowNullValues:Z

    iget-object v10, v9, Lcom/google/gson/internal/h$e;->h:Lcom/google/gson/internal/h$e;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/h$e;-><init>(ZLcom/google/gson/internal/h$e;Ljava/lang/Object;Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    if-gez v4, :cond_a

    iput-object v0, v1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    goto :goto_5

    :cond_a
    iput-object v0, v1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    :goto_5
    invoke-direct {p0, v1, p2}, Lcom/google/gson/internal/h;->rebalance(Lcom/google/gson/internal/h$e;Z)V

    :goto_6
    iget p1, p0, Lcom/google/gson/internal/h;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/gson/internal/h;->size:I

    iget p1, p0, Lcom/google/gson/internal/h;->modCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/gson/internal/h;->modCount:I

    return-object v0
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/h$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/h;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/h$e;->k:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/google/gson/internal/h;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/h;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/h$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/gson/internal/h$e;->k:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/h;->keySet:Lcom/google/gson/internal/h$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/h$c;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/h$c;-><init>(Lcom/google/gson/internal/h;)V

    iput-object v0, p0, Lcom/google/gson/internal/h;->keySet:Lcom/google/gson/internal/h$c;

    :goto_0
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

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/gson/internal/h;->allowNullValues:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/h;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/h$e;

    move-result-object p0

    iget-object p1, p0, Lcom/google/gson/internal/h$e;->k:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/gson/internal/h$e;->k:Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/gson/internal/h$e;->k:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method removeInternal(Lcom/google/gson/internal/h$e;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/h$e;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/gson/internal/h$e;->h:Lcom/google/gson/internal/h$e;

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    iput-object v0, p2, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    iput-object p2, v0, Lcom/google/gson/internal/h$e;->h:Lcom/google/gson/internal/h$e;

    :cond_0
    iget-object p2, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iget-object v1, p1, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    iget v1, p2, Lcom/google/gson/internal/h$e;->l:I

    iget v4, v0, Lcom/google/gson/internal/h$e;->l:I

    if-le v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/internal/h$e;->b()Lcom/google/gson/internal/h$e;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/internal/h$e;->a()Lcom/google/gson/internal/h$e;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/google/gson/internal/h;->removeInternal(Lcom/google/gson/internal/h$e;Z)V

    iget-object v0, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/google/gson/internal/h$e;->l:I

    iput-object v0, p2, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    iput-object p2, v0, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    iput-object v3, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/google/gson/internal/h$e;->l:I

    iput-object v0, p2, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    iput-object p2, v0, Lcom/google/gson/internal/h$e;->a:Lcom/google/gson/internal/h$e;

    iput-object v3, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/gson/internal/h$e;->l:I

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    iput-object v3, p1, Lcom/google/gson/internal/h$e;->b:Lcom/google/gson/internal/h$e;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    iput-object v3, p1, Lcom/google/gson/internal/h$e;->c:Lcom/google/gson/internal/h$e;

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v3}, Lcom/google/gson/internal/h;->replaceInParent(Lcom/google/gson/internal/h$e;Lcom/google/gson/internal/h$e;)V

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/h;->rebalance(Lcom/google/gson/internal/h$e;Z)V

    iget p1, p0, Lcom/google/gson/internal/h;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/gson/internal/h;->size:I

    iget p1, p0, Lcom/google/gson/internal/h;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/gson/internal/h;->modCount:I

    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/h$e;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/h;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/h$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/h;->removeInternal(Lcom/google/gson/internal/h$e;Z)V

    :cond_0
    return-object p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/google/gson/internal/h;->size:I

    return p0
.end method
