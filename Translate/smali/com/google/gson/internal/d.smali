.class public final Lcom/google/gson/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final j:Lcom/google/gson/internal/d;


# instance fields
.field private a:D

.field private b:I

.field private c:Z

.field private f:Z

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/d;

    invoke-direct {v0}, Lcom/google/gson/internal/d;-><init>()V

    sput-object v0, Lcom/google/gson/internal/d;->j:Lcom/google/gson/internal/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/internal/d;->a:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/internal/d;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/d;->c:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/d;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/d;->i:Ljava/util/List;

    return-void
.end method

.method private e(Ljava/lang/Class;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/gson/internal/d;->a:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lv4/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lv4/d;

    const-class v2, Lv4/e;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lv4/e;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/d;->m(Lv4/d;Lv4/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/gson/internal/d;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->i(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->h(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/Class;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/gson/internal/d;->h:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/gson/internal/d;->i:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private h(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->j(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i(Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->j(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j(Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k(Lv4/d;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lv4/d;->value()D

    move-result-wide v1

    iget-wide p0, p0, Lcom/google/gson/internal/d;->a:D

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private l(Lv4/e;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lv4/e;->value()D

    move-result-wide v1

    iget-wide p0, p0, Lcom/google/gson/internal/d;->a:D

    cmpg-double p0, p0, v1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private m(Lv4/d;Lv4/e;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->k(Lv4/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/gson/internal/d;->l(Lv4/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 11

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/d;->e(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, v3}, Lcom/google/gson/internal/d;->f(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v3

    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/d;->f(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    :goto_3
    if-nez v8, :cond_4

    if-nez v7, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/google/gson/internal/d$a;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/d$a;-><init>(Lcom/google/gson/internal/d;ZZLcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)V

    return-object v0
.end method

.method protected b()Lcom/google/gson/internal/d;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/internal/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/d;->b()Lcom/google/gson/internal/d;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Class;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->e(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/d;->f(Ljava/lang/Class;Z)Z

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

.method public g(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget v0, p0, Lcom/google/gson/internal/d;->b:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/google/gson/internal/d;->a:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lv4/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lv4/d;

    const-class v2, Lv4/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lv4/e;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/d;->m(Lv4/d;Lv4/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/gson/internal/d;->f:Z

    if-eqz v0, :cond_5

    const-class v0, Lv4/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lv4/a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {v0}, Lv4/a;->serialize()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lv4/a;->deserialize()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/google/gson/internal/d;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/d;->i(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/d;->h(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/google/gson/internal/d;->h:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/google/gson/internal/d;->i:Ljava/util/List;

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Lcom/google/gson/a;

    invoke-direct {p2, p1}, Lcom/google/gson/a;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
