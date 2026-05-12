.class public final Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$c;


# static fields
.field public static final INSTANCE:Lm0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/d;

    invoke-direct {v0}, Lm0/d;-><init>()V

    sput-object v0, Lm0/d;->INSTANCE:Lm0/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 0

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extras"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm0/e;->INSTANCE:Lm0/e;

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm0/e;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method
