.class public final Lb9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb9/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lb9/a;
    .locals 0

    new-instance p0, Lb9/a;

    invoke-direct {p0, p1, p2, p3}, Lb9/a;-><init>(III)V

    return-object p0
.end method
