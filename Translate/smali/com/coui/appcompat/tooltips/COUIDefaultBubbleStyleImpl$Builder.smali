.class public Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;
    .locals 2

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;-><init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$1;)V

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method
