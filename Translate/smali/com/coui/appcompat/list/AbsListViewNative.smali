.class public Lcom/coui/appcompat/list/AbsListViewNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsListViewNative"

.field public static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field public static final TOUCH_MODE_DOWN:I = 0x0

.field public static final TOUCH_MODE_FLING:I = 0x4

.field public static final TOUCH_MODE_OVERFLING:I = 0x6

.field public static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field public static final TOUCH_MODE_REST:I = -0x1

.field public static final TOUCH_MODE_SCROLL:I = 0x3

.field public static final TOUCH_MODE_TAP:I = 0x1

.field private static final USE_WRAPPER:Z

.field private static final VIEW_WRAPPER_PATH_NEW:Ljava/lang/String; = "com.oplus.inner.widget.AbsListViewWrapper"

.field private static sAbsListViewWrapperName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coui/appcompat/list/AbsListViewNative;->USE_WRAPPER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canReachFrameworkWrapper()Z
    .locals 1

    :try_start_0
    const-string v0, "com.oplus.inner.widget.AbsListViewWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTouchMode(Landroid/widget/AbsListView;)I
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/list/AbsListViewNative;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.inner.widget.AbsListViewWrapper"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getAbsListViewName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/list/AbsListViewNative;->sAbsListViewWrapperName:Ljava/lang/String;

    :try_start_0
    sget-boolean v1, Lcom/coui/appcompat/list/AbsListViewNative;->USE_WRAPPER:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v2, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTouchMode"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v0, "mTouchMode"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "AbsListViewNative"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_2
    return p0
.end method

.method public static setTouchMode(Landroid/widget/AbsListView;I)V
    .locals 4

    invoke-static {}, Lcom/coui/appcompat/list/AbsListViewNative;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.inner.widget.AbsListViewWrapper"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getAbsListViewName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/list/AbsListViewNative;->sAbsListViewWrapperName:Ljava/lang/String;

    :try_start_0
    sget-boolean v1, Lcom/coui/appcompat/list/AbsListViewNative;->USE_WRAPPER:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v2, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTouchMode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v0, "mTouchMode"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "AbsListViewNative"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
