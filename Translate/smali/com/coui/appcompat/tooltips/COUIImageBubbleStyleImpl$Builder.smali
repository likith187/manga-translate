.class public Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimResId:I

.field private mContentText:Ljava/lang/CharSequence;

.field private mDismissText:Ljava/lang/CharSequence;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResId:I

.field private mMediaResourceWithEdges:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mMediaResourceWithEdges:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mMediaResourceWithEdges:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mAnimResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageResId:I

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mDismissText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;
    .locals 2

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;-><init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;)V

    return-object v0
.end method

.method public loadAnim(I)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mAnimResId:I

    return-object p0
.end method

.method public loadImage(I)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageResId:I

    return-object p0
.end method

.method public loadImage(Landroid/graphics/Bitmap;)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public loadImage(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDismissText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mDismissText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMediaResourceWithEdges(Z)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mMediaResourceWithEdges:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
