.class public final synthetic Lj5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lj5/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj5/e;

    invoke-direct {v0}, Lj5/e;-><init>()V

    sput-object v0, Lj5/e;->a:Lj5/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj5/a;

    check-cast p2, Lj5/a;

    invoke-interface {p2}, Lj5/a;->a()I

    move-result p0

    invoke-interface {p1}, Lj5/a;->a()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
