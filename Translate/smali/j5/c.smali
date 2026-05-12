.class public final synthetic Lj5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/g;


# static fields
.field public static final synthetic a:Lj5/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj5/c;

    invoke-direct {v0}, Lj5/c;-><init>()V

    sput-object v0, Lj5/c;->a:Lj5/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo4/d;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    const-class v0, Lj5/a;

    invoke-interface {p1, v0}, Lo4/d;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No delegate creator registered."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    sget-object v0, Lj5/e;->a:Lj5/e;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/d;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lo4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj5/a;

    invoke-direct {v0, p1, p0}, Lcom/google/mlkit/nl/languageid/internal/d;-><init>(Landroid/content/Context;Lj5/a;)V

    return-object v0
.end method
