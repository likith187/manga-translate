.class final Ln8/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln8/j;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/t$a;
    }
.end annotation


# static fields
.field public static final Companion:Ln8/t$a;

.field private static final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ln8/t;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private final final:Ljava/lang/Object;

.field private volatile initializer:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln8/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln8/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln8/t;->Companion:Ln8/t$a;

    const-class v0, Ljava/lang/Object;

    const-string v1, "_value"

    const-class v2, Ln8/t;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ln8/t;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lw8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8/t;->initializer:Lw8/a;

    sget-object p1, Ln8/d0;->INSTANCE:Ln8/d0;

    iput-object p1, p0, Ln8/t;->_value:Ljava/lang/Object;

    iput-object p1, p0, Ln8/t;->final:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ln8/h;

    invoke-virtual {p0}, Ln8/t;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ln8/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ln8/t;->_value:Ljava/lang/Object;

    sget-object v1, Ln8/d0;->INSTANCE:Ln8/d0;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ln8/t;->initializer:Lw8/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ln8/t;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Ln8/t;->initializer:Lw8/a;

    return-object v0

    :cond_1
    iget-object p0, p0, Ln8/t;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object p0, p0, Ln8/t;->_value:Ljava/lang/Object;

    sget-object v0, Ln8/d0;->INSTANCE:Ln8/d0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ln8/t;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln8/t;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
