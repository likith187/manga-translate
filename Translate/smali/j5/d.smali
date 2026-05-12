.class public final synthetic Lj5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/g;


# static fields
.field public static final synthetic a:Lj5/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj5/d;

    invoke-direct {v0}, Lj5/d;-><init>()V

    sput-object v0, Lj5/d;->a:Lj5/d;

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

    new-instance p0, Lcom/google/mlkit/nl/languageid/internal/a$a;

    const-class v0, Lcom/google/mlkit/nl/languageid/internal/d;

    invoke-interface {p1, v0}, Lo4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/d;

    const-class v1, Lf5/d;

    invoke-interface {p1, v1}, Lo4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-direct {p0, v0, p1}, Lcom/google/mlkit/nl/languageid/internal/a$a;-><init>(Lcom/google/mlkit/nl/languageid/internal/d;Lf5/d;)V

    return-object p0
.end method
