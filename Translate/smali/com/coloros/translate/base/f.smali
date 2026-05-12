.class public final synthetic Lcom/coloros/translate/base/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/base/f;->a:Lcom/coloros/translate/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/f;->a:Lcom/coloros/translate/base/BaseActivity;

    invoke-static {p0}, Lcom/coloros/translate/base/BaseActivity;->g0(Lcom/coloros/translate/base/BaseActivity;)V

    return-void
.end method
