.class public final Lcom/coloros/translate/screen/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/o;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/o;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/o;->INSTANCE:Lcom/coloros/translate/screen/utils/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/utils/o;->c(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v0, Lcom/coloros/translate/screen/utils/n;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/utils/n;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final c(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2

    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SoftKeyboardUtil"

    const-string v1, "showSoftKeyboard fail"

    invoke-virtual {p1, v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
