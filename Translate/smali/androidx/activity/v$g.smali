.class public final Landroidx/activity/v$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/activity/v$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/v$g;

    invoke-direct {v0}, Landroidx/activity/v$g;-><init>()V

    sput-object v0, Landroidx/activity/v$g;->INSTANCE:Landroidx/activity/v$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lw8/l;Lw8/l;Lw8/a;Lw8/a;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            "Lw8/l;",
            "Lw8/a;",
            "Lw8/a;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string p0, "onBackStarted"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackProgressed"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackInvoked"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackCancelled"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/activity/v$g$a;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/activity/v$g$a;-><init>(Lw8/l;Lw8/l;Lw8/a;Lw8/a;)V

    return-object p0
.end method
