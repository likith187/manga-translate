.class public final Lcom/coloros/translate/widget/HideSoftInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/widget/HideSoftInputLayout;->a:Landroid/view/Window;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    aget v5, v2, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v5, v2

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-gez v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v5, v2

    if-ltz v2, :cond_1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/coloros/translate/widget/HideSoftInputLayout;->a:Landroid/view/Window;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coloros/translate/widget/HideSoftInputLayout;->a:Landroid/view/Window;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getMWindow()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/HideSoftInputLayout;->a:Landroid/view/Window;

    return-object p0
.end method

.method public final setMWindow(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/HideSoftInputLayout;->a:Landroid/view/Window;

    return-void
.end method
