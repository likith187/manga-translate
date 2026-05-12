.class public final synthetic Ls6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/oplus/epona/Call$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls6/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ls6/b;->b:Ljava/lang/String;

    iput-object p3, p0, Ls6/b;->c:Ljava/lang/String;

    iput-object p4, p0, Ls6/b;->d:Lcom/oplus/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/oplus/epona/Response;)V
    .locals 3

    iget-object v0, p0, Ls6/b;->a:Ljava/lang/String;

    iget-object v1, p0, Ls6/b;->b:Ljava/lang/String;

    iget-object v2, p0, Ls6/b;->c:Ljava/lang/String;

    iget-object p0, p0, Ls6/b;->d:Lcom/oplus/epona/Call$Callback;

    invoke-static {v0, v1, v2, p0, p1}, Ls6/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void
.end method
