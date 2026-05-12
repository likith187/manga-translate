.class public final Lkotlinx/coroutines/android/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/c;->x(JLkotlinx/coroutines/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/i;

.field final synthetic b:Lkotlinx/coroutines/android/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/i;Lkotlinx/coroutines/android/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/c$a;->a:Lkotlinx/coroutines/i;

    iput-object p2, p0, Lkotlinx/coroutines/android/c$a;->b:Lkotlinx/coroutines/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/android/c$a;->a:Lkotlinx/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/android/c$a;->b:Lkotlinx/coroutines/android/c;

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/i;->a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V

    return-void
.end method
