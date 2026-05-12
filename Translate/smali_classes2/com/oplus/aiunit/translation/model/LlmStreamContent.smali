.class public final Lcom/oplus/aiunit/translation/model/LlmStreamContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;
    }
.end annotation


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;",
            ">;"
        }
    .end annotation
.end field

.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParts()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent;->parts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent;->role:Ljava/lang/String;

    return-object p0
.end method

.method public final setParts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/translation/model/LlmStreamContent$SseParts;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent;->parts:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/LlmStreamContent;->role:Ljava/lang/String;

    return-void
.end method
