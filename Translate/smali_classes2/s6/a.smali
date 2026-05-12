.class public Ls6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/epona/f$a;)V
    .locals 1

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/epona/d;->e(Ljava/lang/String;)Lcom/oplus/epona/c;

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->b()V

    return-void
.end method
