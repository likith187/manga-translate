.class public final synthetic Lcom/oplus/anim/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/p;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/d0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/d0;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/anim/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/oplus/anim/a;

    invoke-static {v0, p0, p1}, Lcom/oplus/anim/f0;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/oplus/anim/a;)V

    return-void
.end method
