.class public final Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/model/LlmStreamContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SseParts"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;->text:Ljava/lang/String;

    return-void
.end method
