.class public Lcom/coloros/translate/engine/service/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/IBinder;

.field private c:Z

.field final synthetic d:Lcom/coloros/translate/engine/service/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/service/a$a;->c:Z

    iput-object p2, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/coloros/translate/engine/service/a;->b(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/service/a$a;->c:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAutoDestroy : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslateEngineManager"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public binderDied()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mAutoDestroy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/translate/engine/service/a$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateEngineManager"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/translate/engine/service/a$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->c(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/engine/service/a;->e(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->a(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/engine/service/a;->e(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->d(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/engine/service/a;->e(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->c(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->a(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->d(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->d:Lcom/coloros/translate/engine/service/a;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/a;->b(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/service/a$a;->b:Landroid/os/IBinder;

    :cond_1
    return-void
.end method
