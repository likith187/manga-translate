.class public final synthetic Lcom/coui/appcompat/button/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/SingleButtonWrap;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/button/d;->a:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/d;->a:Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-static {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->b(Lcom/coui/appcompat/button/SingleButtonWrap;)V

    return-void
.end method
