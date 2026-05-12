.class public abstract Lkotlinx/coroutines/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/k;->a:Lkotlinx/coroutines/internal/g0;

    return-void
.end method
