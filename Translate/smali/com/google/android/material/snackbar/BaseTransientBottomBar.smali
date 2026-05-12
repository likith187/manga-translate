.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    }
.end annotation


# static fields
.field private static final a:Landroid/animation/TimeInterpolator;

.field private static final b:Landroid/animation/TimeInterpolator;

.field private static final c:Landroid/animation/TimeInterpolator;

.field static final d:Landroid/os/Handler;

.field private static final e:Z

.field private static final f:[I

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/animation/TimeInterpolator;

    sget-object v0, Lx3/a;->a:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Landroid/animation/TimeInterpolator;

    sget-object v0, Lx3/a;->d:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:Z

    sget v0, Lcom/google/android/material/R$attr;->snackbarStyle:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:[I

    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(ILcom/google/android/material/shape/n;)Lcom/google/android/material/shape/i;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(ILcom/google/android/material/shape/n;)Lcom/google/android/material/shape/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(ILandroid/content/res/Resources;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(ILandroid/content/res/Resources;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static c(ILandroid/content/res/Resources;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_snackbar_background_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private static d(ILcom/google/android/material/shape/n;)Lcom/google/android/material/shape/i;
    .locals 1

    new-instance v0, Lcom/google/android/material/shape/i;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method
