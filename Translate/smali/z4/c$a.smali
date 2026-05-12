.class Lz4/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Ljava/sql/Timestamp;

    const/4 v0, 0x0

    if-ne p0, p2, :cond_0

    const-class p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Lcom/google/gson/d;->p(Ljava/lang/Class;)Lcom/google/gson/v;

    move-result-object p0

    new-instance p1, Lz4/c;

    invoke-direct {p1, p0, v0}, Lz4/c;-><init>(Lcom/google/gson/v;Lz4/c$a;)V

    return-object p1

    :cond_0
    return-object v0
.end method
