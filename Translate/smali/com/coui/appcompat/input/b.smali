.class public final synthetic Lcom/coui/appcompat/input/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/input/b;->a:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    return-void
.end method


# virtual methods
.method public final afterTextChange(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/b;->a:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;

    invoke-static {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->h(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;Landroid/text/Editable;)V

    return-void
.end method
