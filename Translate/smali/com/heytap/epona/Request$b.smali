.class public Lcom/heytap/epona/Request$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Request$b;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Lcom/heytap/epona/Request;
    .locals 4

    new-instance v0, Lcom/heytap/epona/Request;

    iget-object v1, p0, Lcom/heytap/epona/Request$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/epona/Request$b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/heytap/epona/Request$b;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/heytap/epona/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/heytap/epona/Request$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/heytap/epona/Request$b;
    .locals 0

    iput-object p1, p0, Lcom/heytap/epona/Request$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/heytap/epona/Request$b;
    .locals 0

    iput-object p1, p0, Lcom/heytap/epona/Request$b;->a:Ljava/lang/String;

    return-object p0
.end method
