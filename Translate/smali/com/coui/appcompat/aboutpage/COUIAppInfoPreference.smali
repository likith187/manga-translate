.class public final Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private copyFinishText:Ljava/lang/String;

.field private copyText:Ljava/lang/String;

.field private popupWindow:Lcom/coui/appcompat/poplist/COUIPopupWindow;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget p3, Lcom/support/component/R$layout;->coui_component_preference_application_info:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 6
    sget-object p3, Lcom/support/component/R$styleable;->COUIAppInfoPreference:[I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/support/component/R$styleable;->COUIAppInfoPreference_appName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appName:Ljava/lang/String;

    .line 8
    sget p2, Lcom/support/component/R$styleable;->COUIAppInfoPreference_appIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 9
    sget p2, Lcom/support/component/R$styleable;->COUIAppInfoPreference_appVersion:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appVersion:Ljava/lang/String;

    .line 10
    sget p2, Lcom/support/component/R$styleable;->COUIAppInfoPreference_copyText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    .line 11
    sget p2, Lcom/support/component/R$styleable;->COUIAppInfoPreference_copyFinishText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyFinishText:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic h(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->initPopupWindow$lambda$11$lambda$10$lambda$9(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->onBindViewHolder$lambda$5$lambda$4(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final initPopupWindow(Landroid/graphics/Rect;)V
    .locals 5

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupWindow;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/component/R$layout;->coui_component_popup_window_layout:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$drawable;->coui_popup_window_bg:I

    invoke-static {v1, v2, v4}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/support/component/R$id;->popup_window_copy_body:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lq2/a;

    invoke-direct {v1, p1, p0, v0}, Lq2/a;-><init>(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->popupWindow:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    return-void
.end method

.method private static final initPopupWindow$lambda$11$lambda$10$lambda$9(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;Landroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/content/ClipboardManager;

    iget-object v0, p1, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appVersion:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p3, p1, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->toast:Landroid/widget/Toast;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object p3, p1, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyFinishText:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    iput-object p0, p1, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->toast:Landroid/widget/Toast;

    :cond_1
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$5$lambda$4(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$drawableRect"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->popupWindow:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->initPopupWindow(Landroid/graphics/Rect;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->showPopupWindow(Landroid/graphics/Rect;Landroid/view/View;)V

    return v0
.end method

.method private final showPopupWindow(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->popupWindow:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/support/component/R$id;->popup_window_copy_body:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    add-int/2addr v3, v2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_5
    add-int/2addr v3, v4

    float-to-int v0, v0

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/component/R$dimen;->coui_component_copy_window_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/component/R$dimen;->coui_component_copy_window_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v1, "getDefault()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_6
    neg-int p1, v3

    :goto_4
    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->popupWindow:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    if-eqz p0, :cond_7

    neg-int v0, v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getCopyFinishText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyFinishText:Ljava/lang/String;

    return-object p0
.end method

.method public final getCopyText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/component/R$id;->about_app_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Lcom/support/component/R$id;->about_app_name:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/support/component/R$id;->about_app_version:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Lq2/b;

    invoke-direct {v1, p0, v0, p1}, Lq2/b;-><init>(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    return-void
.end method

.method public final setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setCopyFinishText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyFinishText:Ljava/lang/String;

    return-void
.end method

.method public final setCopyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->copyText:Ljava/lang/String;

    return-void
.end method
