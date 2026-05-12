.class Lcom/google/gson/internal/c$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/c;->c(Ljava/lang/Class;Lcom/google/gson/s;)Lcom/google/gson/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/c$p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/j;

    iget-object p0, p0, Lcom/google/gson/internal/c$p;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method
