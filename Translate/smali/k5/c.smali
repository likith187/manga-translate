.class public Lk5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/epona/d$a;)V
    .locals 0

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->a()Lcom/heytap/epona/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/epona/c;->d(Ljava/lang/String;)Lp5/a;

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->b()V

    return-void
.end method
