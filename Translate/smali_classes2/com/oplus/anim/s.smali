.class public final synthetic Lcom/oplus/anim/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/t;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/s;->a:Lcom/oplus/anim/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/s;->a:Lcom/oplus/anim/t;

    invoke-static {p0}, Lcom/oplus/anim/t;->a(Lcom/oplus/anim/t;)V

    return-void
.end method
