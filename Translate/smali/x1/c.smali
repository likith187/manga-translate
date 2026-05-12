.class public final Lx1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lx1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx1/c;

    invoke-direct {v0}, Lx1/c;-><init>()V

    sput-object v0, Lx1/c;->INSTANCE:Lx1/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;
    .locals 0

    const-string p0, "long_rtasr_recorder_with_unit"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lx1/g0;

    invoke-direct {p0, p1, p2}, Lx1/g0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "short_rtasr_recorder_with_unit"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lx1/z0;

    invoke-direct {p0, p1, p2}, Lx1/z0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
