.class public final Lcom/oplus/aiunit/download/core/ListenerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final command:Lcom/oplus/aiunit/download/core/Command;

.field private final listener:Lcom/oplus/aiunit/download/core/DownloadListener;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/aiunit/download/core/Command;Lcom/oplus/aiunit/download/core/DownloadListener;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->command:Lcom/oplus/aiunit/download/core/Command;

    iput-object p3, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->listener:Lcom/oplus/aiunit/download/core/DownloadListener;

    return-void
.end method


# virtual methods
.method public final getCommand()Lcom/oplus/aiunit/download/core/Command;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->command:Lcom/oplus/aiunit/download/core/Command;

    return-object p0
.end method

.method public final getListener()Lcom/oplus/aiunit/download/core/DownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->listener:Lcom/oplus/aiunit/download/core/DownloadListener;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/ListenerInfo;->name:Ljava/lang/String;

    return-object p0
.end method
