.class public final Lcom/oplus/vfxsdk/common/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/t;->c(Lcom/oplus/vfxsdk/common/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/common/t;

.field final synthetic b:Lcom/oplus/vfxsdk/common/Animator;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/common/t;Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/t$a;->a:Lcom/oplus/vfxsdk/common/t;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/t$a;->b:Lcom/oplus/vfxsdk/common/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t$a;->a:Lcom/oplus/vfxsdk/common/t;

    invoke-static {v0}, Lcom/oplus/vfxsdk/common/t;->b(Lcom/oplus/vfxsdk/common/t;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t$a;->b:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnimEndListener onEnd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t$a;->a:Lcom/oplus/vfxsdk/common/t;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/t;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t$a;->b:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t$a;->a:Lcom/oplus/vfxsdk/common/t;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/t;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/t$a;->b:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->getData()Lcom/oplus/vfxsdk/common/AnimatorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/t$a;->b:Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v0, p0}, Lcom/oplus/vfxsdk/common/Animator;->removeAnimEndListener(Lcom/oplus/vfxsdk/common/c;)V

    return-void
.end method
