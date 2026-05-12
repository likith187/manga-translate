.class Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/checkbox/COUICheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadDrawableRunnable"
.end annotation


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private final mDefStyle:I

.field private final mWeakCheckbox:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/checkbox/COUICheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mWeakCheckbox:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mAttrs:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mDefStyle:I

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->lambda$configAnimatedVectorDrawableAndSetState$0(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private configAnimatedVectorDrawableAndSetState(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->access$200(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/coui/appcompat/checkbox/a;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/checkbox/a;-><init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$configAnimatedVectorDrawableAndSetState$0(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->access$200(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mWeakCheckbox:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->access$000(Lcom/coui/appcompat/checkbox/COUICheckBox;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/coui/appcompat/checkbox/COUICheckBox;->access$100()Z

    move-result v3

    const-string v4, "COUICheckBox"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runnable run, current thread = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " start time = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mAttrs:Landroid/util/AttributeSet;

    sget-object v6, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    iget v7, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->mDefStyle:I

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v5}, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->configAnimatedVectorDrawableAndSetState(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/checkbox/COUICheckBox;->access$100()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end time = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void
.end method
